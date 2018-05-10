#ifndef _MYTRACKER_H_
#define _MYTRACKER_H_

#include <cstdint> // for integer types

#include "common/agent.h" // for ae::Agent, ae::Environment
#include "common/config.h" // for nlohmann::json

class MyTracker
{
  private:
  uint64_t id;
  //ae::Point3D point;
  ae::sAgentPosition point;
  public:
  
  bool stational;
  bool exists;
  MyTracker(uint64_t id,ae::sAgentPosition ppoint);
  ~MyTracker(){}

  void setNewPosition(ae::sAgentPosition ppoint,float offset,int debug);
  ae::sAgentPosition getPosition();
  inline bool operator==(const MyTracker& rhs){
    if(id == rhs.id)
    {
      return true;
    }
    return false;
  }
  inline bool operator!=(const MyTracker& rhs){
    return !operator==(rhs);
  }


};

#endif /* _MYTRACKER_H_ */
