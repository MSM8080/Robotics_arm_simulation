# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "qbot: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iqbot:/home/mohamed/catkin_ws/src/qbot/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(qbot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg" NAME_WE)
add_custom_target(_qbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qbot" "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(qbot
  "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbot
)

### Generating Services

### Generating Module File
_generate_module_cpp(qbot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(qbot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(qbot_generate_messages qbot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg" NAME_WE)
add_dependencies(qbot_generate_messages_cpp _qbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbot_gencpp)
add_dependencies(qbot_gencpp qbot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(qbot
  "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbot
)

### Generating Services

### Generating Module File
_generate_module_eus(qbot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(qbot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(qbot_generate_messages qbot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg" NAME_WE)
add_dependencies(qbot_generate_messages_eus _qbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbot_geneus)
add_dependencies(qbot_geneus qbot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(qbot
  "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbot
)

### Generating Services

### Generating Module File
_generate_module_lisp(qbot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(qbot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(qbot_generate_messages qbot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg" NAME_WE)
add_dependencies(qbot_generate_messages_lisp _qbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbot_genlisp)
add_dependencies(qbot_genlisp qbot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(qbot
  "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(qbot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(qbot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(qbot_generate_messages qbot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg" NAME_WE)
add_dependencies(qbot_generate_messages_nodejs _qbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbot_gennodejs)
add_dependencies(qbot_gennodejs qbot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(qbot
  "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbot
)

### Generating Services

### Generating Module File
_generate_module_py(qbot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(qbot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(qbot_generate_messages qbot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mohamed/catkin_ws/src/qbot/msg/joy_data.msg" NAME_WE)
add_dependencies(qbot_generate_messages_py _qbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qbot_genpy)
add_dependencies(qbot_genpy qbot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qbot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qbot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(qbot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qbot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(qbot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qbot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(qbot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qbot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(qbot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qbot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(qbot_generate_messages_py std_msgs_generate_messages_py)
endif()
