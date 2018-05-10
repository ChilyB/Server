#ifndef _EXAMPLE_AGENT_H_
#define _EXAMPLE_AGENT_H_

#include <cstdint> // for integer types

#include "common/agent.h" // for ae::Agent, ae::Environment
#include "common/config.h" // for nlohmann::json

class TestStvorec : public ae::Agent
{
  private:
    float m_dx, m_dy;

  public:
    TestStvorec(const nlohmann::json &parameters);
    ~TestStvorec() {}

    void process(ae::Environment &env);

    uint16_t assigned_type() const;

    bool remove_protection() const { return false; }
};


#endif /* _EXAMPLE_AGENT_H_ */
