#include <cstdint>

#include <memory>
#include <mutex>
#include <vector>
#include <thread>


#include "common/agent.h"
#include "common/agent_body.h"
#include "common/config.h"
#include "common/timing.h"
#include "common/logging.h"

#include "visualisation_agent.h"

#include <GL/freeglut.h>
#include <GL/gl.h>
#include <GL/glext.h>
#include <GL/glu.h>
#include <GL/glut.h>
#include <GL/glx.h>
#include <X11/X.h>
#include <X11/Xlib.h>


const std::string VisualisationAgent::kAgentName = "visualisation";
const std::string VisualisationAgent::kDefaultWindowName = "robot visualisation";


using namespace ae;

class VisualisationAgent *g_visualisation_agent_instance = nullptr;
int g_time_ms = 20;
//TODO directly read params of this plugin
//TODO mean skip agent_group_list and follower params
//int g_time_ms = ae::config::get["agent_group_list"]["follower"]["spawn"]["params"]["framerate"];
void timer_callback(int dummy)
{
  g_visualisation_agent_instance->rendering();
  //if running zavola za g_time_ms funkciu rendering
  if (g_visualisation_agent_instance->is_running()) glutTimerFunc(g_time_ms, timer_callback, 0);
}

void mouse_motion_callback(int x, int y)
{
  g_visualisation_agent_instance->mouse_motion_handler(x, y);
}

void touch_motion_callback(int x, int y)
{
  g_visualisation_agent_instance->touch_motion_handler(x, y);
}

VisualisationAgent::VisualisationAgent(const nlohmann::json &parameters) :
  m_fullscreen(kDefaultFullscreen),
  m_draw_grid(kDefaultDrawGrid),
  m_resolution({kDefaultResolutionX, kDefaultResolutionY}),
  m_framerate(kDefaultFrameRate),
  m_window_name(kDefaultWindowName),

  m_buffer(nullptr),
  m_lock_buffer(),

  m_window_handle(-1),
  m_running(false),
  m_glut_thread(),
  m_camera_offset(0),
  m_cm_size(0),

  m_grid(),
  m_border(),
  //chilyb
  m_draha()
{
  //backdoor alebo prasacke zviditelnenie
  if (g_visualisation_agent_instance == nullptr) g_visualisation_agent_instance = this;

  // initialize agent interface
  m_interface.type = this->assigned_type();
  m_interface.body = AgentBody::get_body_type(m_interface.type);
  m_interface.timestamp = time::timestamp();
  m_interface.expires = time::future_timestamp(time::seconds(10));
  m_interface.position.x = 0.0f;
  m_interface.position.y = 0.0f;
  m_interface.position.z = 0.0f;
  m_interface.color.r = 1.0f;
  m_interface.color.g = 1.0f;
  m_interface.color.b = 1.0f;

  // load options from parameters
  if (!parameters.is_object())
  {
    LOG(ERROR) << "Invalid arguments for visualisation agent: " << parameters;
  }
  else
  {
    std::string name;

    if (parameters.find("fullscreen") != parameters.end() &&
        parameters["fullscreen"].is_boolean())
    {
      m_fullscreen = parameters["fullscreen"];
    }
    if (parameters.find("draw_grid") != parameters.end() &&
        parameters["draw_grid"].is_boolean())
    {
      m_draw_grid = parameters["draw_grid"];
    }
    if (parameters.find("resolution") != parameters.end() &&
        parameters["resolution"].is_array() &&
        parameters["resolution"].size() == 2)
    {
      m_resolution.x = parameters["resolution"][0];
      m_resolution.y = parameters["resolution"][1];
    }
    if (parameters.find("framerate") != parameters.end() &&
        parameters["framerate"].is_number_unsigned())
    {
      m_framerate = parameters["framerate"];
    }
    if (parameters.find("window_name") != parameters.end() &&
        parameters["window_name"].is_string())
    {
      m_window_name = parameters["window_name"];
    }

    name = "border_width";
    if (parameters.find(name) != parameters.end())
    {
      if (parameters[name].is_number())
      {
        float width = parameters[name];
        if (width > 0.0f)
        {
          make_border(width);
        }
      }
      else
      {
        LOG(ERROR) << "VisualisationAgent: Invalid setting value for \'" << name
                   << "\'. Expected " << "number"
                   << ". Got: " << parameters[name];
      }
    }

    //moje charging positions
    std::string name1 = "charging_position1x";
    std::string name2 = "charging_position1y";
    if(parameters.find(name1) != parameters.end() && parameters.find(name2) != parameters.end())
    {
      if(parameters[name1].is_number() && parameters[name2].is_number())
      {
        charging_positions.emplace_back(parameters[name1],parameters[name2],0);
      }
    }
    /*from_border":5.0,
            "charging_line_width":1.5*/
            name1= "from_border";
    if(parameters.find(name1) != parameters.end()){
      if(parameters[name1].is_number_float()){
        charging_line_from_border = parameters[name1];
      }
    }
     name1= "charging_line_width";
    if(parameters.find(name1) != parameters.end()){
      if(parameters[name1].is_number_float()){
        charging_line_width = parameters[name1];
      }
    }
      name1= "charging_line_final_line_length";
    if(parameters.find(name1) != parameters.end()){
      if(parameters[name1].is_number_float()){
        charging_line_final_line_length = parameters[name1];
      }
    }
      name1= "charging_line_end_position_from_border";
    if(parameters.find(name1) != parameters.end()){
      if(parameters[name1].is_number_float()){
        charging_line_end_position_from_border = parameters[name1];
      }
    }

    //cs_make_line(0,0,1);
  }


  m_camera_offset = (config::get["playground"]["size"][1].get<double>() / 2) / tan(45.0 / 360.0 * 3.14);
  m_cm_size = m_resolution.x / config::get["playground"]["size"][0].get<double>();

  if (VLOG_IS_ON(4))
  {
    VLOG(4) << "Visualisation agent type: "  << m_interface.type;
    VLOG(4) << "Visualisation body type:" << m_interface.body;
    VLOG(4) << "Visualisation option: " << "fullscreen=" << m_fullscreen;
    VLOG(4) << "Visualisation option: " << "draw_grid=" << m_draw_grid;
    VLOG(4) << "Visualisation option: " << "resolution.x=" << m_resolution.x;
    VLOG(4) << "Visualisation option: " << "resolution.y=" << m_resolution.y;
    VLOG(4) << "Visualisation option: " << "framerate=" << m_framerate << "fps";
    VLOG(4) << "Visualisation option: " << "window_name=" << m_window_name;
    VLOG(4) << "Visualisation setting: " << "camera_offset=" << m_camera_offset << "cm";
    VLOG(4) << "Visualisation setting: " << "cm_size=" << m_cm_size << "px";
  }

  m_glut_thread = std::thread(&VisualisationAgent::glut_thread_callback, this);
}


VisualisationAgent::~VisualisationAgent()
{
  m_running = false;

  if (m_glut_thread.joinable())
  {
    m_glut_thread.join();
  }
}


void VisualisationAgent::process(Environment &env)
{
  agent_buffer_t new_data = agent_buffer_t(new std::vector<sAgentInterface>(env.global_state()));
//->
  const uint16_t target_type_ChargingAgent = ae::config::get["agent_list"]["ChargingAgent"]["interface_type"];
  const auto &agent_list = env.global_state();
  uint16_t linemod;
  ae::sAgentPosition robotPosition;

  for (const ae::sAgentInterface &agent : agent_list)
  {
    if (agent.type == target_type_ChargingAgent)
    {
      linemod = agent.value[0];
      robotPosition = agent.position;
    }
  }
//<-
  m_lock_buffer.lock();
  m_buffer = new_data;
  //->
  if(linemod == 1 && m_draha.empty()){
    cs_make_line(robotPosition.x,robotPosition.y,1);
    LOG(INFO)<< "vysualisation draha dynamic";
  }else if(linemod == 2 && m_draha.empty()){
    cs_make_line_static(1);
    LOG(INFO)<< "vysualisation draha static";
  }else if(linemod == 0 && !m_draha.empty()){
    m_draha.clear();
    //cs_make_line_static(1);
    //cs_make_line(0,0,1);
    LOG(INFO)<< "visualisation draha clear";
  }
  //cs_make_line_static(1);
  //cs_make_line(0,0,1);
  //<-
  m_lock_buffer.unlock();
  /*float lineWidth[2];
  glGetFloatv(GL_LINE_WIDTH_RANGE, lineWidth);
  LOG(INFO)<<"line width"<<lineWidth[0]<<" "<< lineWidth[1];*/
  m_interface.timestamp = time::timestamp();
  m_interface.expires = time::future_timestamp(time::seconds(10));
}


uint16_t VisualisationAgent::assigned_type() const
{
  return config::get["agent_list"][kAgentName]["interface_type"];
}


void VisualisationAgent::glut_thread_callback()
{
  {
    int argc = 0;
    glutInit(&argc, NULL);
  }
  glutInitWindowSize(m_resolution.x, m_resolution.y);
  glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH);
  m_window_handle = glutCreateWindow(m_window_name.c_str());

  glViewport(0, 0, m_resolution.x, m_resolution.y);
  glMatrixMode(GL_PROJECTION);
  //glClearDepth(1.0);
  glEnable(GL_DEPTH_TEST);
  //glDepthFunc(GL_LEQUAL);
  gluPerspective(45, (float) m_resolution.x / m_resolution.y, 0.1, 2000);
  glMatrixMode(GL_MODELVIEW);
  //glHint(GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST);

  if (m_fullscreen)
  {
    glutFullScreen();
  }



  if (m_draw_grid)
  {
    make_grid();
  }

  //passive mouse motion
  //glutPassiveMotionFunc(mouse_motion_callback);
  //active touch move mouse motion
  //usable for touchscreen input
  glutMotionFunc(touch_motion_callback);

  m_running = true;
  glutTimerFunc(20, timer_callback, 0);
  glutMainLoop();

  if (m_window_handle != -1)
  {
    glutDestroyWindow(m_window_handle);
  }
}

void VisualisationAgent::rendering()
{
//  auto frame_period = ae::time::microseconds((int)(1.0 / (double)m_framerate * 1000000.0));
//  auto next_frame = ae::time::clock::now();

  draw_scene();

/*  next_frame += frame_period;
  if (next_frame > ae::time::clock::now())
  {
    ae::time::sleep_until(next_frame);
  }
  else
  {
    next_frame = ae::time::clock::now();
  }
*/
}

void VisualisationAgent::draw_scene()
{
  TIMED_FUNC(draw_scene_timer);

  // get buffered state
  m_lock_buffer.lock();
  agent_buffer_t agents = m_buffer;
  m_lock_buffer.unlock();

  // set viewport
  glMatrixMode(GL_PROJECTION);
  glShadeModel(GL_SMOOTH);
  glEnable(GL_DEPTH_TEST);
  glMatrixMode(GL_MODELVIEW);

  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
  glLoadIdentity();

  glEnable(GL_DEPTH_TEST);
  glDepthFunc(GL_LEQUAL);

  glMatrixMode(GL_MODELVIEW);

  glTranslatef(0.0f, 0.0f, -m_camera_offset);
  glRotatef(0.0f, 0.0f, 0.0f, 0.0f);

  glClearColor(0.0f, 0.0f, 0.0f, 0.0f);

  // draw grid
  if (m_draw_grid)
  {
    draw_grid();
  }

  // draw agents
  if (agents && agents->size() > 0)
  {
    for (const sAgentInterface &agent : *agents)
    {
      draw_agent(agent);
    }
  }

  // draw border
  if (!m_border.empty())
  {
    glColor3f(1.0f, 1.0f, 1.0f);
    draw_triangles(m_border);
  }
  //chilyb
  if (!m_draha.empty())
  {
    cs_draw_line();
  }//cs_draw_line();
  

  glutSwapBuffers();
}


void VisualisationAgent::draw_grid()
{
  unsigned int max_y = 100;
  unsigned int max_x = (max_y*16.0)/9.0;
  unsigned int j, i;

  for (j = 0; j < max_y; j++)
  {
    for (i = 0; i < max_x; i++)
    {
      if ((j%2) == (i%2))
        glColor3f(0.05, 0.05, 0.05);
      else
        glColor3f(0.0, 0.0, 0.0);

      float size = 1; //cm_size;
      float x = size*(i - max_x/2.0);
      float y = size*(j - max_y/2.0);


      glBegin(GL_QUADS);
      glVertex3f(x - 0.5*size, y - 0.5*size, 0.0);
      glVertex3f(x + 0.5*size, y - 0.5*size, 0.0);
      glVertex3f(x + 0.5*size, y + 0.5*size, 0.0);
      glVertex3f(x - 0.5*size, y + 0.5*size, 0.0);
      glEnd();
    }
  }
}


void VisualisationAgent::draw_triangles(const std::vector<ae::Point3D> &points)
{
  glBegin(GL_TRIANGLES);
  for (const ae::Point3D &point : points)
  {
    glVertex3f(point.x, point.y, point.z);
  }
  glEnd();
}


void VisualisationAgent::draw_agent(const sAgentInterface &agent)
{
  glPushMatrix();

  glTranslatef(agent.position.x, agent.position.y, agent.position.z);
  glRotatef(agent.position.roll, 0.0f, 1.0f, 0.0f);
  glRotatef(agent.position.pitch, 1.0f, 0.0f, 0.0f);
  glRotatef(agent.position.yaw, 0.0f, 0.0f, 1.0f);

  const AgentBody *body = AgentBody::get_body(agent.body);
  if (body->vertices().size() > 0)
  {
    glColor3f(agent.color.r, agent.color.g, agent.color.b);

    glBegin(GL_TRIANGLES);
    for (const auto &vert : body->vertices())
    {
      glVertex3f(vert.x, vert.y, vert.z);
    }
    glEnd();
  }

  glPopMatrix();
}


void VisualisationAgent::make_grid()
{
  int count_x = config::get["playground"]["size"][0].get<int>() + 1;
  if (count_x & 1)
  {
    count_x += 1;
  }
  int count_y = config::get["playground"]["size"][1].get<int>() + 1;
  if (count_y & 1)
  {
    count_y += 1;
  }
  count_x /= 2;
  count_y /= 2;

  std::vector<ae::Point3D> line;//void cs_make_line();
  for (float x = -count_x; x < count_x; x += 2)
  {
    line.push_back({x,        0.0f, 0.0f});
    line.push_back({x + 1.0f, 0.0f, 0.0f});
    line.push_back({x,        1.0f, 0.0f});
    line.push_back({x + 1.0f, 0.0f, 0.0f});
    line.push_back({x + 1.0f, 1.0f, 0.0f});
    line.push_back({x,        1.0f, 0.0f});
  }//void cs_make_line();
  
  m_grid = line;
}


void VisualisationAgent::make_border(const float width)
{
  m_border.clear();

  const float w = config::get["playground"]["size"][0].get<float>() / 2.0f;
  const float h = config::get["playground"]["size"][1].get<float>() / 2.0f;

  const float wi = w - width;
  const float hi = h - width;
  constexpr float d = 0.0f;

  // top 1
  m_border.emplace_back(-w, h, d);
  m_border.emplace_back(w, h, d);
  m_border.emplace_back(wi, hi, d);
  // top 2
  m_border.emplace_back(-w, h, d);
  m_border.emplace_back(wi, hi, d);
  m_border.emplace_back(-wi, hi, d);
  // right 3
  m_border.emplace_back(w, h, d);
  m_border.emplace_back(w, -h, d);
  m_border.emplace_back(wi, hi, d);
  // right 4
  m_border.emplace_back(wi, hi, d);
  m_border.emplace_back(w, -h, d);
  m_border.emplace_back(wi, -hi, d);
  // bottom 5
  m_border.emplace_back(wi, -hi, d);
  m_border.emplace_back(w, -h, d);
  m_border.emplace_back(-wi, -hi, d);
  // bottom 6
  m_border.emplace_back(-wi, -hi, d);
  m_border.emplace_back(w, -h, d);
  m_border.emplace_back(-w, -h, d);
  // left 7
  m_border.emplace_back(-w, h, d);
  m_border.emplace_back(-wi, hi, d);
  m_border.emplace_back(-wi, -hi, d);
  // left 8
  m_border.emplace_back(-w, h, d);
  m_border.emplace_back(-wi, -hi, d);
  m_border.emplace_back(-w, -h, d);
}

//bchily
void VisualisationAgent::cs_draw_line()
{
  //test vykreslenia čiary
  glLineWidth(50.0);
  glColor3f(1.0, 0.0, 0.0);
  glBegin(GL_QUADS);
  
  for(const ae::Point3D &point : m_draha)
  glVertex3f(point.x,point.y,point.z);
  //glVertex3f(1, -1, 0);
  glEnd();
}

//bchily
void VisualisationAgent::cs_make_line(int x, int y, int st)
{
  m_draha.clear();

  const float w = config::get["playground"]["size"][0].get<float>() / 2.0f;
  //const float h = config::get["playground"]["size"][1].get<float>() / 2.0f;
 //LOG(INFO) << " w " << w
  //         << " h " << h;
 const float fromb = charging_line_final_line_length;//from border
  const float width = charging_line_width;
  charging_positions[st-1].x = w;

  m_draha.emplace_back(x,y,0);
  m_draha.emplace_back(x,y-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-charging_line_end_position_from_border-fromb,charging_positions[st-1].y-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-charging_line_end_position_from_border-fromb,charging_positions[st-1].y,0);

  m_draha.emplace_back(charging_positions[st-1].x-charging_line_end_position_from_border,charging_positions[st-1].y,0);
  m_draha.emplace_back(charging_positions[st-1].x-charging_line_end_position_from_border,charging_positions[st-1].y-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-charging_line_end_position_from_border-fromb,charging_positions[st-1].y-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-charging_line_end_position_from_border-fromb,charging_positions[st-1].y,0);
  //pozicia robota 
  //robota ziskať z intx, inty
  //na poziciu stanice
  //stanica by mala byt v nastaveniach
  //constexpr float d = 0.0f;
}

void VisualisationAgent::cs_make_line_static(int st){
  m_draha.clear();
  //nasleduj biely okraj pokym nenarazi na cervenu ciaru, nasledovat cervenu ciaru

  const float w = config::get["playground"]["size"][0].get<float>() / 2.0f;
  const float h = config::get["playground"]["size"][1].get<float>() / 2.0f;
 

  const float fromb = charging_line_from_border;
  const float width = charging_line_width;
  const float posun = charging_line_end_position_from_border;
  const float dlzka = charging_line_final_line_length;
  const float medzera_medzi_drahami = width+4.0;
  charging_positions[st-1].x = w;

  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka-medzera_medzi_drahami,charging_positions[st-1].y-2,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka-medzera_medzi_drahami,h-fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka-medzera_medzi_drahami-width,h-fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka-medzera_medzi_drahami-width,charging_positions[st-1].y-2,0);

  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka-medzera_medzi_drahami,h-fromb,0);
  m_draha.emplace_back(-w+fromb,h-fromb,0);
  m_draha.emplace_back(-w+fromb,h-fromb-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka-medzera_medzi_drahami,h-fromb-width,0);

  m_draha.emplace_back(-w+fromb,h-fromb,0);
  m_draha.emplace_back(-w+fromb,-h+fromb,0);
  m_draha.emplace_back(-w+fromb+width,-h+fromb,0);
  m_draha.emplace_back(-w+fromb+width,h-fromb,0);

  m_draha.emplace_back(-w+fromb,-h+fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka,-h+fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka,-h+fromb+width,0);
  m_draha.emplace_back(-w+fromb,-h+fromb+width,0);

  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka,-h+fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun-dlzka,charging_positions[st-1].y,0);
  m_draha.emplace_back(charging_positions[st-1].x-width-posun-dlzka,charging_positions[st-1].y,0);
  m_draha.emplace_back(charging_positions[st-1].x-width-posun-dlzka,-h+fromb,0);

  m_draha.emplace_back(charging_positions[st-1].x-dlzka-posun,charging_positions[st-1].y-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun,charging_positions[st-1].y-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun,charging_positions[st-1].y,0);
  m_draha.emplace_back(charging_positions[st-1].x-dlzka-posun,charging_positions[st-1].y,0);

  /*
  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka-medzera_medzi_drahami,charging_positions[st-1].y+2,0);
  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka-medzera_medzi_drahami,h-fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka-medzera_medzi_drahami-width,h-fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka-medzera_medzi_drahami-width,charging_positions[st-1].y+2,0);

  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka-medzera_medzi_drahami,h-fromb,0);
  m_draha.emplace_back(-w+fromb,h-fromb,0);
  m_draha.emplace_back(-w+fromb,h-fromb-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka-medzera_medzi_drahami,h-fromb-width,0);

  m_draha.emplace_back(-w+fromb,h-fromb,0);
  m_draha.emplace_back(-w+fromb,-h+fromb,0);
  m_draha.emplace_back(-w+fromb+width,-h+fromb,0);
  m_draha.emplace_back(-w+fromb+width,h-fromb,0);

  m_draha.emplace_back(-w+fromb,-h+fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka,-h+fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka,-h+fromb+width,0);
  m_draha.emplace_back(-w+fromb,-h+fromb+width,0);

  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka,-h+fromb,0);
  m_draha.emplace_back(charging_positions[st-1].x-fromb-posun-dlzka,charging_positions[st-1].y,0);
  m_draha.emplace_back(charging_positions[st-1].x-fromb-width-posun-dlzka,charging_positions[st-1].y,0);
  m_draha.emplace_back(charging_positions[st-1].x-fromb-width-posun-dlzka,-h+fromb,0);

  m_draha.emplace_back(charging_positions[st-1].x-dlzka-posun,charging_positions[st-1].y-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun,charging_positions[st-1].y-width,0);
  m_draha.emplace_back(charging_positions[st-1].x-posun,charging_positions[st-1].y,0);
  m_draha.emplace_back(charging_positions[st-1].x-dlzka-posun,charging_positions[st-1].y,0);
*/
}


void VisualisationAgent::mouse_motion_handler(int x, int y)
{
  std::cout << x <<" "<< y << std::endl;
  m_interface.position.x = x;
  m_interface.position.y = y;
  m_interface.position.z = 0.0f;
}

void VisualisationAgent::touch_motion_handler(int x, int y)
{
  //std::cout << x <<" "<< y << std::endl;

  sTouchAgentPosition value;
  value = pixels_to_agent_position(x, y);

  //m_interface.position.x = x;
  //m_interface.position.y = y;
  if (ae::config::get["debuging"]["visualisation_position"] == true)
  {
    std::cout << value.x <<" "<< value.y << " " << x <<" "<< y <<std::endl;
  }
  m_interface.position.x = value.x;
  m_interface.position.y = value.y;
  m_interface.position.z = 0.0f;
}

sTouchAgentPosition VisualisationAgent::pixels_to_agent_position (int x, int y)
{
  sTouchAgentPosition value;
  //TODO read resolution from json
  //TODO constants from json
  //TODO xrandr
  int screen_res_x = 1920;
  int screen_res_y = 1080;
  int x_size_mm = 604;
  int y_size_mm = 342;
  int zero_x = (screen_res_x/2)-1;
  int zero_y = (screen_res_y/2)-1;
  int square_size_mm = 10;
  int square_size_pix = ae::config::get["touch"]["square_size_pix"];
  //int square_size_pix = round((screen_res_x*square_size_mm)/x_size_mm));
/*
  int x_grid_size;
  int y_grid_size;

  div_t divresult;
  divresult = div (screen_res_x, square_size_pix);
  x_grid_size = divresult.quot;
  divresult = div (screen_res_y, square_size_pix);
  y_grid_size = divresult.quot;
*/
  div_t divresult;

  divresult = div ((x - zero_x), square_size_pix);
  value.x = divresult.quot;

  divresult = div ((y - zero_y), square_size_pix);
  value.y = -divresult.quot;

  return value;
}
