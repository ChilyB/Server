#include "common/agent.h"  // pre ae::Agent, ae::Environment
#include "common/agent_body.h"  // pre ae::AgentBody
#include "common/config.h"  // pre ae::config::get
#include "common/timing.h" // pre ae::time::sleep_for, ae::time::milliseconds
#include "common/logging.h" // pre LOG()
#include "common/plugin.h"


#include "ComAgent.h"
using namespace std;

ComAgent::ComAgent(const nlohmann::json &parameters) :
  Agent()
{
  m_interface.timestamp = ae::time::timestamp();
  m_interface.expires = ae::time::future_timestamp(ae::time::seconds(2));
  obsadeny = false;
  m_interface.position = { 0, 0, 0, 0, 0, 0};
  run = true;
  pthread_create(&receiveThread,nullptr,&ComAgent::comunicationLoop,nullptr);

  LOG(INFO) << "ComAgent initialized";
}
ComAgent::~ComAgent(){
  
  run = false;
  close(server);
  close(client);
}

mutex ComAgent::receiveMutex;
bool ComAgent::run;
bool ComAgent::received = false;
int ComAgent::server;
int ComAgent::client;
bool ComAgent::serverEstablished = false;
int ComAgent::portNum = 15001;
bool ComAgent::isExit = false;
int ComAgent::bufsize = 50;
char ComAgent::buffer[50];
char ComAgent::tempbuffer[50];
char ComAgent::sendbuffer[50];
struct sockaddr_in ComAgent::server_addr;
socklen_t ComAgent::size;
bool ComAgent::obsadeny;
long ComAgent::timeout;
    

/** \brief Napíše do logu, že  bola zavolaná táto funkcia a čaká 5 ms. */
void ComAgent::process(ae::Environment &env)
{
  (void)env;
  //auto a = PluginStorage::open_plugin("string");
  
  m_interface.timestamp = ae::time::timestamp();
  m_interface.expires = ae::time::future_timestamp(ae::time::seconds(2));
  
  receiveMutex.lock();
  if(received){
    received=false;
   int i = 1;
    int tst2 = setsockopt(server,IPPROTO_TCP,TCP_NODELAY,&i, sizeof(i));
    if(buffer[0]==1){
      LOG(INFO) << "ComAgent: message = 1";
      m_interface.value[0]=1;

      const uint16_t target_type_StationAgent = ae::config::get["agent_list"]["StationAgent"]["interface_type"];
      const uint16_t target_type = ae::config::get["agent_list"]["MovementAgent"]["interface_type"];
      uint16_t stationState;
      const auto &agent_list = env.global_state();
      for (const ae::sAgentInterface &agent : agent_list)
      {
        if (agent.type == target_type_StationAgent)
        {
          stationState=agent.value[0];
        }
      }
      for (const ae::sAgentInterface &agent : agent_list)
      {
        if (agent.type == target_type)
        {
          if(stationState==1){
            /*if(!obsadeny){
              obsadeny = true;
              timeout=clock() + connectionTimeout;
            }
            if(obsadeny && timeout < clock()){*/
              //if(stationState==0 || stationState==1){//pre testovanie
              if(agent.value[0]==1){//ak sa najde stacionarny agent: 1 a pozicia jeho
                m_interface.value[0]=1;
                m_interface.position = agent.position;
                sendbuffer[0] = 1;
                send(server, sendbuffer, 1, 0);
                LOG(INFO) << "ComAgent: static agent found";
              }else{//ak sa nenajde stacionarny agent: 2 a pozicia vynulovana
                m_interface.value[0]=2;
                m_interface.position = {0,0,0,0,0,0};
                sendbuffer[0] = 2;
                send(server, sendbuffer, 1, 0);
                LOG(INFO) << "ComAgent: static agent not found";
              }
/*
            }else{
               sendbuffer[0] = 3;
              send(server, sendbuffer, 1, 0);
              LOG(INFO)<<"ComAgent: Station busy timeout"<<stationState;
            }*/

            
          }else
          {
            sendbuffer[0] = 3;
            send(server, sendbuffer, 1, 0);
            LOG(INFO)<<"ComAgent: Station busy "<<stationState;
          }
        }
      }    
      //najdi movementAgent a zisti jeho stav value0 a position
      //env.global_state().
      
      //if movementagent value0 = 1
      //m_interface.position = movementagent position

    }else
    if(buffer[0]==2){//ak odosle ze sa nabija vynulovat (zaciatocny stav)
      obsadeny = false;
      LOG(INFO) << "ComAgent: message = 2";
      m_interface.value[0]=0;
      m_interface.position = {0,0,0,0,0,0};
      //mozno zavriet spojenie
      LOG(INFO) << "ComAgent: agent charging on station";
    }else{
      int tmp = buffer[0];
      LOG(ERROR) << "ComAgent:unexpected message from ComAgent "<< tmp;
    }
    buffer[0]=0;
  }
  /*if(buffer[0]==1){
     sendbuffer[0] = 2;
  send(server, sendbuffer, 1, 0);
  }*/
  

 

  receiveMutex.unlock();


}


uint16_t ComAgent::assigned_type() const
{
  // plugin.cpp chcecks that this config entry exists
  return ae::config::get["agent_list"]["ComAgent"]["interface_type"];
}

void ComAgent::createServer(){


    //struct sockaddr_in server_addr;
    //socklen_t size;

    client = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);

    if (client < 0) 
    {
       // cout << "\nError establishing socket..." << endl;
       LOG(ERROR) << "ComAgent:Error establishing socket...";
       return;
    }

    
    //cout << "\n=> Socket server has been created..." << endl;
    LOG(INFO) << "ComAgent:Socket server has been created...";
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htons(INADDR_ANY);
    server_addr.sin_port = htons(portNum);




    if ((bind(client, (struct sockaddr*)&server_addr,sizeof(server_addr))) < 0) 
    {
        //cout << "=> Error binding connection, the socket has already been established..." << endl;
        LOG(ERROR) << "ComAgent:Error binding connection, the socket has already been established...";
        return;
    }

    size = sizeof(server_addr);
//    cout << "=> Looking for clients..." << endl;
    LOG(INFO) << "ComAgent:Looking for clients...";

     
   
  
    listen(client, 1);
    


    int clientCount = 1;
    server = accept(client,(struct sockaddr *)&server_addr,&size);
   int i = 1;
    int tst2 = setsockopt(server,IPPROTO_TCP,TCP_NODELAY,&i, sizeof(i));
    LOG(INFO) << "socknodelay "<<tst2;
    

    // first check if it is valid or not
    if (server < 0) 
      LOG(ERROR) << "ComAgent:Error on accepting...";
       // cout << "=> Error on accepting..." << endl;

   
}

void* ComAgent::comunicationLoop(void *){
 while(run){
  if(serverEstablished == false){
    createServer();
    
    //strcpy(buffer, "=> Server connected...\n");
    //send(server, buffer, bufsize, 0);
    serverEstablished = true;
  }
 
 if (server > 0) 
    {
      
        char retError;
        //LOG(INFO) << x;
        //retError = recv(server,tempbuffer,1,0);
        LOG(INFO) << "ComAgent:waiting for comunication";
        retError = read(server,tempbuffer,1);
        if(retError==0 ){
          //LOG(INFO) << tempbuffer[0];
          LOG(ERROR) << "ComAgent:robot disconnected";
          
          listen(client, 1);
          int clientCount = 1;
          server = accept(client,(struct sockaddr *)&server_addr,&size);
          if (server < 0) 
            LOG(ERROR) << "ComAgent:Error on accepting...";
        }

        receiveMutex.lock();
        received=true;
        buffer[0] = tempbuffer[0];
        tempbuffer[0]=0;
        LOG(INFO) << "ComAgent: message = "<<(uint32_t)buffer[0];
        receiveMutex.unlock();
    }

   

 }

}