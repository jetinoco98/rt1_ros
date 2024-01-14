#!/usr/bin/env python3

import rospy
import math
from rt1_pkg.srv import RobotToTarget, RobotToTargetResponse
from rt1_pkg.msg import RobotPosVel
from rt1_pkg.msg import TargetPos

# Empty variable declaration
velocities_list = []
target_ok = False
# Getting the parameter for the average velocity window 
average_velocities_window = rospy.get_param('average_velocities_window', default=10)
# Obtaining the data according to the named msg files
robot = RobotPosVel()
target = TargetPos()

# Callback function used to handle the updates from the "/target_pos" topic
def TargetPos_callback(data):
    global target_ok, target
    target.x = data.x
    target.y = data.y
    target_ok = True

# Callback function used to handle the updates from the "/robot_pos_vel" topic
def RobotPosVel_callback(data):
    global velocities_list
    robot.x = data.x
    robot.y = data.y
    # Insert a new element of velocity to the list if the list length is bellow the window
    if len(velocities_list) < average_velocities_window:
        velocities_list.append((data.vx, data.vy))
    # If the list is full, delete the oldest element and replace it with the newest velocity data
    elif len(velocities_list) == average_velocities_window:
        velocities_list.pop(0)
        velocities_list.append((data.vx, data.vy))


def get_RobotToTarget(req):
    response = RobotToTargetResponse()
    global target_ok, target, robot, velocities_list

    if target_ok:
        # Obtaining the target position with respect to the robot
        response.dx = target.x - robot.x
        response.dy = target.y - robot.y
        # Logging the target position information into rospy
        rospy.loginfo("Target X position: %d Target Y position: %d", target.x, target.y)
        # Calculation of the euclidean distance
        response.distance = math.hypot(target.x - robot.x, target.y - robot.y)
    else:
        response.dx = 0.0
        response.dy = 0.0

    # Calculation of the average velocities
    response.average_vx = sum(x[0] for x in velocities_list) / len(velocities_list)
    response.average_vy = sum(y[0] for y in velocities_list) / len(velocities_list)
    
    return response

# Initialization of the  ROS node
# Setting up subscribers and services
def robot_to_target_server():
    rospy.init_node('robot_to_target', anonymous=False)
    # Subscribers
    rospy.Subscriber("/target_pos", TargetPos, TargetPos_callback)
    rospy.Subscriber("/robot_pos_vel", RobotPosVel, RobotPosVel_callback)
    # Service
    rospy.Service("srv_robot_to_target", RobotToTarget, get_RobotToTarget)
    print("Service up and running: Obtain distance to target and average velocities.")
    rospy.spin()

if __name__ == "__main__":
    robot_to_target_server()

