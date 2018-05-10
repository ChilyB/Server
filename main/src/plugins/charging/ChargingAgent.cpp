#include "common/agent.h"  // pre ae::Agent, ae::Environment
#include "common/agent_body.h"  // pre ae::AgentBody
#include "common/config.h"  // pre ae::config::get
#include "common/timing.h" // pre ae::time::sleep_for, ae::time::milliseconds
#include "common/logging.h" // pre LOG()
#include "common/plugin.h"

#include "ChargingAgent.h"


ChargingAgent::ChargingAgent(const nlohmann::json &parameters) :
  Agent()
{
  m_interface.timestamp = ae::time::timestamp();
  m_interface.expires = ae::time::future_timestamp(ae::time::seconds(2));

  m_interface.position = { 0, 0, 0, 0, 0, 0};
  ca_value = 0;
  sa_value = 0;
  ma_value = 0;
  ca_position = {0,0,0,0,0,0};
  sa_position = {0,0,0,0,0,0};
  ma_position = {0,0,0,0,0,0};

  if (!parameters.is_object())
  {
    LOG(ERROR) << "Invalid arguments for Charging agent: " << parameters;
  }
  else
  {
    std::string name1;

   
      name1= "debug";
    if(parameters.find(name1) != parameters.end()){
      if(parameters[name1].is_number_integer()){
        debug = parameters[name1];
      }
    }
      name1= "draha";
    if(parameters.find(name1) != parameters.end()){
      if(parameters[name1].is_number_integer()){
        draha = parameters[name1];
      }
    }

    
    
  }

  LOG(INFO) << "ChargingAgent initialized";
}

/** \brief Napíše do logu, že  bola zavolaná táto funkcia a čaká 5 ms. */
void ChargingAgent::process(ae::Environment &env)
{
  (void)env;

  
  m_interface.timestamp = ae::time::timestamp();
  m_interface.expires = ae::time::future_timestamp(ae::time::seconds(2));
  
  const uint16_t target_type_ComAgent = ae::config::get["agent_list"]["ComAgent"]["interface_type"];
  const uint16_t target_type_MovementAgent = ae::config::get["agent_list"]["MovementAgent"]["interface_type"];
  const uint16_t target_type_StationAgent = ae::config::get["agent_list"]["StationAgent"]["interface_type"];
  
  const auto &agent_list = env.global_state();
  
 
  for (const ae::sAgentInterface &agent : agent_list)
  {
   
    if (agent.type == target_type_ComAgent)
    {
      ca_value = agent.value[0];
      ca_position = agent.position;
    }
    if (agent.type == target_type_StationAgent)
    {
      sa_value = agent.value[0];
      sa_position = agent.position;
    }
    if (agent.type == target_type_MovementAgent)
    {
      ma_value = agent.value[0];
      ma_position = agent.position;
    }
  }
  if(debug){
  LOG(INFO)<< "ca_value:"<<ca_value<<" x:"<<ca_position.x<<" y:"<<ca_position.y<<" z:"<<ca_position.z
          << "\nsa_value:"<<sa_value<<" x:"<<sa_position.x<<" y:"<<sa_position.y<<" z:"<<sa_position.z
          << "\nma_value:"<<ma_value<<" x:"<<ma_position.x<<" y:"<<ma_position.y<<" z:"<<ma_position.z
          << "\ncs_value:"<<m_interface.value[0]<<" x:"<<m_interface.position.x<<" y:"<<m_interface.position.y<<" z:"<<m_interface.position.z;
}
if(draha==0){
if(sa_value ==1 && ca_value != 0){
    if(ca_value == 1){
      m_interface.position = ca_position;
      m_interface.value[0] = ca_value;
      
    }else
     if(ca_value == 2){
      m_interface.position = {0,0,0,0,0,0};
      m_interface.value[0] = ca_value;
      
    }
    
  }else{
    m_interface.position = {0,0,0,0,0,0};
      m_interface.value[0] = 0;
  }
}else{
  m_interface.position = ma_position;
      
        m_interface.value[0]=draha;
}
  
  
    

}


uint16_t ChargingAgent::assigned_type() const
{
  // plugin.cpp chcecks that this config entry exists
  return ae::config::get["agent_list"]["ChargingAgent"]["interface_type"];
}
