#ifndef _MOVEMENT_AGENT_H_
#define _MOVEMENT_AGENT_H_

#include <cstdint> // for integer types

#include "common/agent.h" // for ae::Agent, ae::Environment
#include "common/config.h" // for nlohmann::json
#include "MyTracker.h"

class MovementAgent : public ae::Agent
{
  private:
    std::vector<MyTracker> trackedAgents;
    void checkTrackers(ae::Environment &env);
    MyTracker* getStandingTracker();
    int debug;
    double limit;
  public:
    MyTracker* standingTracker; //null if none standing
    MovementAgent(const nlohmann::json &parameters);
    ~MovementAgent() {}

    void process(ae::Environment &env);
    
    uint16_t assigned_type() const;

    bool remove_protection() const { return false; }
};


#endif /* _MOVEMENT_AGENT_H_ */
