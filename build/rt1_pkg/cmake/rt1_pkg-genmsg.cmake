# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rt1_pkg: 2 messages, 2 services")

set(MSG_I_FLAGS "-Irt1_pkg:/root/rt1_ros/src/rt1_pkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rt1_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg" NAME_WE)
add_custom_target(_rt1_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rt1_pkg" "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg" ""
)

get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg" NAME_WE)
add_custom_target(_rt1_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rt1_pkg" "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg" ""
)

get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv" NAME_WE)
add_custom_target(_rt1_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rt1_pkg" "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv" ""
)

get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv" NAME_WE)
add_custom_target(_rt1_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rt1_pkg" "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt1_pkg
)
_generate_msg_cpp(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt1_pkg
)

### Generating Services
_generate_srv_cpp(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt1_pkg
)
_generate_srv_cpp(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt1_pkg
)

### Generating Module File
_generate_module_cpp(rt1_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt1_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rt1_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rt1_pkg_generate_messages rt1_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_cpp _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_cpp _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_cpp _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_cpp _rt1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt1_pkg_gencpp)
add_dependencies(rt1_pkg_gencpp rt1_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt1_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt1_pkg
)
_generate_msg_eus(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt1_pkg
)

### Generating Services
_generate_srv_eus(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt1_pkg
)
_generate_srv_eus(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt1_pkg
)

### Generating Module File
_generate_module_eus(rt1_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt1_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rt1_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rt1_pkg_generate_messages rt1_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_eus _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_eus _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_eus _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_eus _rt1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt1_pkg_geneus)
add_dependencies(rt1_pkg_geneus rt1_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt1_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt1_pkg
)
_generate_msg_lisp(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt1_pkg
)

### Generating Services
_generate_srv_lisp(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt1_pkg
)
_generate_srv_lisp(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt1_pkg
)

### Generating Module File
_generate_module_lisp(rt1_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt1_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rt1_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rt1_pkg_generate_messages rt1_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_lisp _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_lisp _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_lisp _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_lisp _rt1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt1_pkg_genlisp)
add_dependencies(rt1_pkg_genlisp rt1_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt1_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt1_pkg
)
_generate_msg_nodejs(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt1_pkg
)

### Generating Services
_generate_srv_nodejs(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt1_pkg
)
_generate_srv_nodejs(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt1_pkg
)

### Generating Module File
_generate_module_nodejs(rt1_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt1_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rt1_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rt1_pkg_generate_messages rt1_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_nodejs _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_nodejs _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_nodejs _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_nodejs _rt1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt1_pkg_gennodejs)
add_dependencies(rt1_pkg_gennodejs rt1_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt1_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt1_pkg
)
_generate_msg_py(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt1_pkg
)

### Generating Services
_generate_srv_py(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt1_pkg
)
_generate_srv_py(rt1_pkg
  "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt1_pkg
)

### Generating Module File
_generate_module_py(rt1_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt1_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rt1_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rt1_pkg_generate_messages rt1_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/RobotPosVel.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_py _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/msg/TargetPos.msg" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_py _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/LastTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_py _rt1_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/rt1_ros/src/rt1_pkg/srv/RobotToTarget.srv" NAME_WE)
add_dependencies(rt1_pkg_generate_messages_py _rt1_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rt1_pkg_genpy)
add_dependencies(rt1_pkg_genpy rt1_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rt1_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt1_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rt1_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rt1_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(rt1_pkg_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rt1_pkg_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(rt1_pkg_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt1_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rt1_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rt1_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(rt1_pkg_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rt1_pkg_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(rt1_pkg_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt1_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rt1_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rt1_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(rt1_pkg_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rt1_pkg_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(rt1_pkg_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt1_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rt1_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rt1_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(rt1_pkg_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rt1_pkg_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(rt1_pkg_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt1_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt1_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rt1_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rt1_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(rt1_pkg_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rt1_pkg_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(rt1_pkg_generate_messages_py nav_msgs_generate_messages_py)
endif()
