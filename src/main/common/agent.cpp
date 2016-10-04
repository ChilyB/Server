#include <agent.h>
#include <debug.h>

#include <math_robot.h>

#include <configure.h>

extern class CConfigure g_configure;

CAgent::CAgent( struct sAgentInterface agent_interface,
                class CAgentGroup *agent_group
              ):CAgentInterface(agent_interface, agent_group)
{
  #ifdef _DEBUG_COMMON_
  printf("%lu : agent created\n", (unsigned long int)this);
  #endif


  agent_group->set_agent_struct(&this->agent_interface);

  dx = 0.0;
  dy = 0.0;
  dz = 0.0;

  droll = 0.0;
  dpitch = 0.0;
  dyaw = 0.0;
}


CAgent::~CAgent()
{
  #ifdef _DEBUG_COMMON_
  printf("%lu : agent destroyed\n", (unsigned long int)this);
  #endif
}

void CAgent::agent_process()
{
  int res_rx = agent_group->get_agent_struct(&agent_interface);

  if ((rand()%100) < 2)
  {
    double dt = 0.1*agent_interface.dt;

    dx = m_rnd()*dt;
    dy = m_rnd()*dt;
    dz = m_rnd()*dt;

    droll = m_rnd()*dt;
    dpitch = m_rnd()*dt;
    dyaw = m_rnd()*dt;

  }

  agent_interface.position.x+= dx;
  agent_interface.position.y+= dy;
  agent_interface.position.z+= dz;

  agent_interface.position.roll+= droll;
  agent_interface.position.pitch+= dpitch;
  agent_interface.position.yaw+= dyaw;


  agent_interface.position.x = m_saturate(-g_configure.get_width_cm(), g_configure.get_width_cm(), agent_interface.position.x);
  agent_interface.position.y = m_saturate(-g_configure.get_height_cm(), g_configure.get_height_cm(), agent_interface.position.y);
  agent_interface.position.z = m_saturate(-g_configure.get_depth_cm(), g_configure.get_depth_cm(), agent_interface.position.z);

  //process AI here

  int res_tx = agent_group->set_agent_struct(&agent_interface);

  #ifdef _DEBUG_COMMON_
  printf("%lu : processing agent with %u id %i %i\n", (unsigned long int)this, agent_interface.id, res_rx, res_tx);
  #endif
}
