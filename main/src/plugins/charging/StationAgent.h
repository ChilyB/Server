#ifndef _STATION_AGENT_H_
#define _STATION_AGENT_H_

#include <cstdint> // for integer types
#include <iostream>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>
#include <mutex>

#include "common/agent.h" // for ae::Agent, ae::Environment
#include "common/config.h" // for nlohmann::json
//agent komunikujuci so stanicou
class StationAgent : public ae::Agent
{
  private:
  
    pthread_t receiveThread;
    static bool run;
    static std::mutex receiveMutex;
    static bool received;
    static bool serverEstablished;
    static int client, server;
    static int portNum;
    static bool isExit;
    static int bufsize;
    static char buffer[50];
    static char tempbuffer[50];
    static struct sockaddr_in server_addr;
    static socklen_t size;
   // float m_dx, m_dy;
    static void createServer();
    static void* comunicationLoop(void *);
  public:
    StationAgent(const nlohmann::json &parameters);
    ~StationAgent();

    void process(ae::Environment &env);

    uint16_t assigned_type() const;

    bool remove_protection() const { return false; }
};


#endif /* _SERVER_AGENT_H_ */
