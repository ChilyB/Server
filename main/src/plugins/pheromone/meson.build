# Vytvorí zdieľanú knižnicu, ktorá sa volá 'example_agent' -> 'libexample_agent.so'
shared_library('pheromone',
  # zoznam zdrojových súborov pluginu
  ['plugin.cpp', 'pheromone.cpp'],

  # závisí iba na spoločných závislostiach projektu (thready)
  dependencies: common_deps,

  # umožni priamo includovať všetko, čo je v priečinku 'src' (napr. #include "common/agent.h")
  include_directories: global_inc,

  # staticky zlinkuj so spoločnou knižnicou projektu
  link_with: common_lib,

  # Táto knižnica sa má inštalovať do adresára 'lib'
  install: true,

  # Override install directory because Ubuntu puts libraries into architecture dependent sub directory
  install_dir: 'lib'
)
