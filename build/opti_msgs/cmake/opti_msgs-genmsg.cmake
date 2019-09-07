# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "opti_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iopti_msgs:/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(opti_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg" NAME_WE)
add_custom_target(_opti_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "opti_msgs" "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(opti_msgs
  "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opti_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(opti_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opti_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(opti_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(opti_msgs_generate_messages opti_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg" NAME_WE)
add_dependencies(opti_msgs_generate_messages_cpp _opti_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opti_msgs_gencpp)
add_dependencies(opti_msgs_gencpp opti_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opti_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(opti_msgs
  "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opti_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(opti_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opti_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(opti_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(opti_msgs_generate_messages opti_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg" NAME_WE)
add_dependencies(opti_msgs_generate_messages_eus _opti_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opti_msgs_geneus)
add_dependencies(opti_msgs_geneus opti_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opti_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(opti_msgs
  "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opti_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(opti_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opti_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(opti_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(opti_msgs_generate_messages opti_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg" NAME_WE)
add_dependencies(opti_msgs_generate_messages_lisp _opti_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opti_msgs_genlisp)
add_dependencies(opti_msgs_genlisp opti_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opti_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(opti_msgs
  "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opti_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(opti_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opti_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(opti_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(opti_msgs_generate_messages opti_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg" NAME_WE)
add_dependencies(opti_msgs_generate_messages_nodejs _opti_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opti_msgs_gennodejs)
add_dependencies(opti_msgs_gennodejs opti_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opti_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(opti_msgs
  "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opti_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(opti_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opti_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(opti_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(opti_msgs_generate_messages opti_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yangrui/icra/project/opti_ws/src/opti_msgs/msg/Odom.msg" NAME_WE)
add_dependencies(opti_msgs_generate_messages_py _opti_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(opti_msgs_genpy)
add_dependencies(opti_msgs_genpy opti_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS opti_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opti_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/opti_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(opti_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(opti_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opti_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/opti_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(opti_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(opti_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opti_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/opti_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(opti_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(opti_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opti_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/opti_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(opti_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(opti_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opti_msgs)
  install(CODE "execute_process(COMMAND \"/home/yangrui/anaconda2/envs/icra/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opti_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/opti_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(opti_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(opti_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
