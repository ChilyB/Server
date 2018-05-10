#include "common/agent.h"  // pre ae::Agent, ae::Environment
#include "common/agent_body.h"  // pre ae::AgentBody
#include "common/config.h"  // pre ae::config::get
#include "common/timing.h" // pre ae::time::sleep_for, ae::time::milliseconds
#include "common/logging.h" // pre LOG()
#include "common/plugin.h"

#include "MovementAgent.h"
#include "MyTracker.h"

MovementAgent::MovementAgent(const nlohmann::json &parameters) :
  Agent()
{
  m_interface.timestamp = ae::time::timestamp();
  m_interface.expires = ae::time::future_timestamp(ae::time::seconds(2));
  limit = 0.0;
  debug = 0;
  m_interface.value[0]=0;

  if (!parameters.is_object())
  {
    LOG(ERROR) << "Invalid arguments for Movement agent: " << parameters;
  }
  else
  {
    std::string name1;

   
      name1= "debugmov";
    if(parameters.find(name1) != parameters.end()){
      if(parameters[name1].is_number_integer()){
        debug = parameters[name1];
      }
    }
      name1= "limit";
    if(parameters.find(name1) != parameters.end()){
      if(parameters[name1].is_number_float()){
        limit = parameters[name1];
      }
    }

    
    
  }
  LOG(INFO) << "MovementAgent initialized";
}

MyTracker* MovementAgent::getStandingTracker()
{
  /*for(const MyTracker &tr:trackedAgents)
  {
     if(tr.stational == true){
       return tr;
     }
  }*/

  for(int i=0;i<trackedAgents.size();i++){
    if(trackedAgents[i].stational){
      return &trackedAgents[i];
    }

  }
  return nullptr;
}

/** \brief Napíše do logu, že  bola zavolaná táto funkcia a čaká 5 ms. */
void MovementAgent::process(ae::Environment &env)
{

  (void)env;
  //auto a = PluginStorage::open_plugin("string");
  
  m_interface.timestamp = ae::time::timestamp();
  m_interface.expires = ae::time::future_timestamp(ae::time::seconds(2));

  checkTrackers(env);
  standingTracker = getStandingTracker();
  if(standingTracker != nullptr){
    m_interface.value[0]=1;
    m_interface.position.x=standingTracker->getPosition().x;
    m_interface.position.y=standingTracker->getPosition().y;
    m_interface.position.z=standingTracker->getPosition().z;
  }else{
    m_interface.value[0]=0;
  }
}

void MovementAgent::checkTrackers(ae::Environment &env){

//load trackers 
  const uint16_t target_type = ae::config::get["agent_list"]["real_robot_agent"]["interface_type"];
  std::vector<MyTracker> temptr;
 
  const auto &agent_list = env.global_state();
  
  //all to exists false
  for(MyTracker &tc:trackedAgents){
    tc.exists=false;
  }
  

  for (const ae::sAgentInterface &agent : agent_list)
   {
   
    if (agent.type == target_type)
    {
      //LOG(INFO)<< agent.id<<" x:"<<agent.position.x<<" y:"<<agent.position.y;

      temptr.push_back(MyTracker(agent.id,agent.position));
    
      bool zhoda = false;

      for(MyTracker &tc:trackedAgents){
        tc.exists=false;
        if(temptr.size()>0 && temptr.back()==tc){
          zhoda = true;
          tc.exists=true;
          tc.setNewPosition(temptr.back().getPosition(),limit,debug);
        }

      }
      if(zhoda == false && temptr.size()>0){
        trackedAgents.push_back(temptr.back());
      }
    }

    
    
  }
  //vymazanie tych co prestali existovat
  for(int i= trackedAgents.size()-1;i>=0;i--){
    if(trackedAgents[i].exists==false){
      trackedAgents.erase(trackedAgents.begin()+i);
    }

  }


}

uint16_t MovementAgent::assigned_type() const
{
  // plugin.cpp chcecks that this config entry exists
  return ae::config::get["agent_list"]["MovementAgent"]["interface_type"];
}

