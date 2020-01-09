# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "deeprl: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ideeprl:/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(deeprl_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg" NAME_WE)
add_custom_target(_deeprl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "deeprl" "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(deeprl
  "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/deeprl
)

### Generating Services

### Generating Module File
_generate_module_cpp(deeprl
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/deeprl
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(deeprl_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(deeprl_generate_messages deeprl_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg" NAME_WE)
add_dependencies(deeprl_generate_messages_cpp _deeprl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(deeprl_gencpp)
add_dependencies(deeprl_gencpp deeprl_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS deeprl_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(deeprl
  "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/deeprl
)

### Generating Services

### Generating Module File
_generate_module_eus(deeprl
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/deeprl
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(deeprl_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(deeprl_generate_messages deeprl_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg" NAME_WE)
add_dependencies(deeprl_generate_messages_eus _deeprl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(deeprl_geneus)
add_dependencies(deeprl_geneus deeprl_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS deeprl_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(deeprl
  "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/deeprl
)

### Generating Services

### Generating Module File
_generate_module_lisp(deeprl
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/deeprl
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(deeprl_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(deeprl_generate_messages deeprl_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg" NAME_WE)
add_dependencies(deeprl_generate_messages_lisp _deeprl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(deeprl_genlisp)
add_dependencies(deeprl_genlisp deeprl_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS deeprl_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(deeprl
  "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/deeprl
)

### Generating Services

### Generating Module File
_generate_module_nodejs(deeprl
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/deeprl
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(deeprl_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(deeprl_generate_messages deeprl_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg" NAME_WE)
add_dependencies(deeprl_generate_messages_nodejs _deeprl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(deeprl_gennodejs)
add_dependencies(deeprl_gennodejs deeprl_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS deeprl_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(deeprl
  "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/deeprl
)

### Generating Services

### Generating Module File
_generate_module_py(deeprl
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/deeprl
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(deeprl_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(deeprl_generate_messages deeprl_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/vasista/Desktop/quadrupedal_robot/src/deeprl/msg/State.msg" NAME_WE)
add_dependencies(deeprl_generate_messages_py _deeprl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(deeprl_genpy)
add_dependencies(deeprl_genpy deeprl_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS deeprl_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/deeprl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/deeprl
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(deeprl_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/deeprl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/deeprl
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(deeprl_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/deeprl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/deeprl
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(deeprl_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/deeprl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/deeprl
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(deeprl_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/deeprl)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/deeprl\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/deeprl
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(deeprl_generate_messages_py std_msgs_generate_messages_py)
endif()
