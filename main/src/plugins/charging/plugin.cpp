#include <vector>
#include <string>
#include <iostream>

#include "common/agent.h"  // pre ae::Agent
#include "common/logging.h"
#include "common/plugin.h" // pre ae::plugin::plugin_t, ae::plugin::plugin_init, nlohmann::json, el::base::type::StoragePointer

#include "ChargingAgent.h"
#include "ComAgent.h"
#include "StationAgent.h"
#include "MovementAgent.h"

// mená, ktoré používame
using json = nlohmann::json;
using el::base::type::StoragePointer;
using namespace ae;
using ae::plugin::plugin_t;
using ae::plugin::plugin_init_t;
using ae::plugin::plugin_init;

// forward declarations for plugin functions
extern "C" plugin_t* charging_load();
int charging_init(plugin_init_t &init_data);
std::vector<Agent*> charging_create(const json &parameters);


// štruktúra pluginu
static plugin_t charging_plugin = {
  charging_init, // or just ae::plugin::plugin_init
  charging_create
};


// plugin load function
extern "C" plugin_t* charging_load()
{
  return &charging_plugin;
}


// Inicializuje plugin a vypíše správu do logu.
int charging_init(plugin_init_t &init_data)
{
  // nastav globálne premenné
  plugin_init(init_data);

  // tu si plugin môže robiť svoje veci

  // napr môže skontrolovať, že konfiguračný súbor naozaj obsahuje položky pre
  // agentov ktorých tento plugin vytvára
  const auto &agent_list = config::get["agent_list"];
  if (agent_list.find("ChargingAgent") == agent_list.end())
  {
    LOG(ERROR) << "Configuration is missing 'agent_list' entry for 'ChargingAgent'";
    return -1;
  }

  LOG(INFO) << "charging plugin initialized.";

  // vráť nulu pri úspešnej inicializácii
  return 0;
}


// Funkcia, ktorá vytvára agentov na základe predaných parametrov.
std::vector<Agent*> charging_create(const json &parameters)
{
  std::vector<Agent*> arr;
  LOG(INFO) << "charging created";
  ChargingAgent *agent = new ChargingAgent(parameters);
  ComAgent *agent1 = new ComAgent(parameters);
  StationAgent *agent2 = new StationAgent(parameters);
  MovementAgent *agent3 = new MovementAgent(parameters);
  if (agent != nullptr)
  {
    arr.push_back(agent);
  }
  if(agent1 != nullptr){
    arr.push_back(agent1);
  }
  if(agent2 != nullptr){
    arr.push_back(agent2);
  }
  if(agent3 != nullptr){
    arr.push_back(agent3);
  }

  return arr;
}
