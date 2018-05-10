#ifndef _CHARGING_AGENT_H_
#define _CHARGING_AGENT_H_

#include <cstdint> // for integer types

#include "common/agent.h" // for ae::Agent, ae::Environment
#include "common/config.h" // for nlohmann::json

class ChargingAgent : public ae::Agent
{
  private:
    uint16_t ca_value;
    ae::sAgentPosition ca_position;
    uint16_t sa_value;
    ae::sAgentPosition sa_position;
    uint16_t ma_value;
    ae::sAgentPosition ma_position;
    int debug;
    int draha; 
  public:
    ChargingAgent(const nlohmann::json &parameters);
    ~ChargingAgent() {}

    void process(ae::Environment &env);

    uint16_t assigned_type() const;

    bool remove_protection() const { return false; }
};


#endif /* _CHARGING_AGENT_H_ */
