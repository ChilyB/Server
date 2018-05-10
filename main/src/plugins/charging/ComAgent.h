#ifndef _COM_AGENT_H_
#define _COM_AGENT_H_

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
#include <netinet/tcp.h>
#include "common/agent.h" // for ae::Agent, ae::Environment
#include "common/config.h" // for nlohmann::json
#include <time.h>

#define connectionTimeout 60
//agent komunikujúci s robotom
class ComAgent : public ae::Agent
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
    static char sendbuffer[50];
    static struct sockaddr_in server_addr;
    static socklen_t size;
    static bool obsadeny;
    static long timeout;
   // float m_dx, m_dy;
    static void createServer();
    static void* comunicationLoop(void *);

  public:
    ComAgent(const nlohmann::json &parameters);
    ~ComAgent();

    void process(ae::Environment &env);

    uint16_t assigned_type() const;

    bool remove_protection() const { return false; }
};


#endif /* _COM_AGENT_H_ */
