#include "common/agent.h"  // pre ae::Agent, ae::Environment
#include "common/agent_body.h"  // pre ae::AgentBody
#include "common/config.h"  // pre ae::config::get
#include "common/timing.h" // pre ae::time::sleep_for, ae::time::milliseconds
#include "common/logging.h" // pre LOG()
#include "common/plugin.h"

#include "MyTracker.h"



MyTracker::MyTracker(uint64_t id,ae::sAgentPosition ppoint)
{
this->id = id;
point = ppoint;
stational = false;
exists = true;
}

void MyTracker::setNewPosition(ae::sAgentPosition ppoint,float offset,int debug)
{
  double ofst = sqrt((point.x-ppoint.x)*(point.x-ppoint.x)+(point.y-ppoint.y)*(point.y-ppoint.y));
  if(debug){
    LOG(INFO) <<"id:" <<id<< " offset " << ofst << " x1:"<< point.x << " x2:"<<ppoint.x << " y1:"<<point.y << " y2:"<<ppoint.y;
  }
  
if(ofst <= offset){
  stational = true;
}else{
  stational = false;
}
 point = ppoint;
}
ae::sAgentPosition MyTracker::getPosition()
{
  return point;
}