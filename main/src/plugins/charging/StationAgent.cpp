#include "common/agent.h"  // pre ae::Agent, ae::Environment
#include "common/agent_body.h"  // pre ae::AgentBody
#include "common/config.h"  // pre ae::config::get
#include "common/timing.h" // pre ae::time::sleep_for, ae::time::milliseconds
#include "common/logging.h" // pre LOG()
#include "common/plugin.h"


#include "StationAgent.h"
using namespace std;

StationAgent::StationAgent(const nlohmann::json &parameters) :
  Agent()
{
  m_interface.timestamp = ae::time::timestamp();
  m_interface.expires = ae::time::future_timestamp(ae::time::seconds(2));

  m_interface.position = { 0, 0, 0, 0, 0, 0};
  run = true;
  pthread_create(&receiveThread,nullptr,&StationAgent::comunicationLoop,nullptr);
  
 /*
  if (parameters.is_object())
  {
    if (parameters.find("color") != parameters.end() &&
        parameters["color"].is_array() &&
        parameters["color"].size() == 3)
      {
        m_interface.color.r = parameters["color"][0];
        m_interface.color.g = parameters["color"][1];
        m_interface.color.b = parameters["color"][2];
        VLOG(3) << "Color set to " << parameters["color"];
      }
  }*/
  LOG(INFO) << "StationAgent initialized";
}
StationAgent::~StationAgent(){
  run = false;
  close(server);
}
mutex StationAgent::receiveMutex;
bool StationAgent::run;
bool StationAgent::received = false;
int StationAgent::server;
int StationAgent::client;
bool StationAgent::serverEstablished = false;
int StationAgent::portNum = 15000;
bool StationAgent::isExit = false;
int StationAgent::bufsize = 50;
char StationAgent::buffer[50];
char StationAgent::tempbuffer[50];
struct sockaddr_in StationAgent::server_addr;
socklen_t StationAgent::size;
    
/** \brief Napíše do logu, že  bola zavolaná táto funkcia a čaká 5 ms. */
void StationAgent::process(ae::Environment &env)
{
  (void)env;
  //auto a = PluginStorage::open_plugin("string");
  
  m_interface.timestamp = ae::time::timestamp();
  m_interface.expires = ae::time::future_timestamp(ae::time::seconds(10));
  
  receiveMutex.lock();
  if(received){
    received=false;
    if(buffer[0]==0){//not ready
      m_interface.value[0]=0;
      LOG(INFO)<<"StationAgent: station not ready";
    }else
    if(buffer[0]==1){//ready
      m_interface.value[0]=1;
      LOG(INFO)<<"StationAgent: station ready";
    }else
    if(buffer[0]==2){//waiting
      m_interface.value[0]=2;
      //LOG(INFO)<<"StationAgent: station waiting for agent";
      LOG(INFO)<<"StationAgent: agent is charging on station";
    }else
    if(buffer[0]==3){//charging
      m_interface.value[0]=3;
      LOG(INFO)<<"StationAgent: agent is charging on station";
    }
    else{
      int tmp = buffer[0];
      LOG(ERROR) << "StationAgent:unexpected message from Station "<< tmp;
    }

  }
  buffer[0]=0;
  receiveMutex.unlock();
  
  //comunicationLoop(nullptr);


}


uint16_t StationAgent::assigned_type() const
{
  // plugin.cpp chcecks that this config entry exists
  return ae::config::get["agent_list"]["StationAgent"]["interface_type"];
}

void StationAgent::createServer(){


    //struct sockaddr_in server_addr;
    //socklen_t size;

    client = socket(AF_INET, SOCK_STREAM, 0);

    if (client < 0) 
    {
       // cout << "\nError establishing socket..." << endl;
       LOG(ERROR) << "StationAgent:Error establishing socket...";
       return;
    }

    
    //cout << "\n=> Socket server has been created..." << endl;
    LOG(INFO) << "StationAgent:Socket server has been created...";
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = htons(INADDR_ANY);
    server_addr.sin_port = htons(portNum);




    if ((bind(client, (struct sockaddr*)&server_addr,sizeof(server_addr))) < 0) 
    {
        //cout << "=> Error binding connection, the socket has already been established..." << endl;
        LOG(ERROR) << "StationAgent: Error binding connection, the socket has already been established...";
        return;
    }

    size = sizeof(server_addr);
//    cout << "=> Looking for clients..." << endl;
    LOG(INFO) << "StationAgent: Looking for clients...";

    listen(client, 1);


    int clientCount = 1;
    server = accept(client,(struct sockaddr *)&server_addr,&size);
    
    // first check if it is valid or not
    if (server < 0) 
      LOG(ERROR) << "StationAgent:Error on accepting...";
       // cout << "=> Error on accepting..." << endl;

   
}

void* StationAgent::comunicationLoop(void *){
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
        LOG(INFO) << "StationAgent:waiting for comunication";
        retError = read(server,tempbuffer,1);
        if(retError==0 ){
          //LOG(INFO) << tempbuffer[0];
          LOG(ERROR) << "StationAgent:station disconnected";
          
          listen(client, 1);
          int clientCount = 1;
          server = accept(client,(struct sockaddr *)&server_addr,&size);
          if (server < 0) 
            LOG(ERROR) << "StationAgent:Error on accepting...";
        }

        receiveMutex.lock();
        received=true;
        buffer[0] = tempbuffer[0];
        LOG(INFO) << "StationAgent: message = "<<(uint32_t)buffer[0];
        receiveMutex.unlock();
        //LOG(INFO) << "still running";
        //cout << "=> Connected with the client #" << clientCount << ", you are good to go..." << endl;
        //cout << "\n=> Enter # to end the connection\n" << endl;

       
        //cout << "Client: ";
        //receive
        /*
        do {
            recv(server, buffer, bufsize, 0);
            cout << buffer << " ";
            if (*buffer == '#') {
                *buffer = '*';
                isExit = true;
            }
        } while (*buffer != '*');
        */
        //send
        /*
        do {
            cout << "\nServer: ";
            do {
                cin >> buffer;
                send(server, buffer, bufsize, 0);
                if (*buffer == '#') {
                    send(server, buffer, bufsize, 0);
                    *buffer = '*';
                    isExit = true;
                }
            } while (*buffer != '*');

            cout << "Client: ";
            do {
                recv(server, buffer, bufsize, 0);
                cout << buffer << " ";
                if (*buffer == '#') {
                    *buffer == '*';
                    isExit = true;
                }
            } while (*buffer != '*');
        } while (!isExit);
*/
        
//close procedure
 /*
        // inet_ntoa converts packet data to IP, which was taken from client
        //cout << "\n\n=> Connection terminated with IP " << inet_ntoa(server_addr.sin_addr);
        close(server);
        //cout << "\nGoodbye..." << endl;
        isExit = false;
        exit(1);
        */
    }

    //close(client);

 }

}
