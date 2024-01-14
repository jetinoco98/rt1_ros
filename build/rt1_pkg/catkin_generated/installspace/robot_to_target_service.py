#!/usr/bin/env python3

import rospy
from rt1_pkg.srv import RobotToTarget, RobotToTargetResponse
from rt1_pkg.msg import RobotPosVel
from rt1_pkg.msg import TargetPos


velocities_list = []
target_ok = False
average_velocities_window = rospy.get_param('average_velocities_window', default=20)
robot = RobotPosVel()
target = TargetPos()

def TargetPos_callback(data):
    global target_ok, target
    target.x = data.x
    target.y = data.y
    target_ok = True

def RobotPosVel_callback(data):
    global velocities_list
    robot.x_pos = data.x
    robot.y_pos = data.y
    if len(velocities_list) < average_velocities_window:
        velocities_list.append((data.vx, data.vy))
    elif len(velocities_list) == average_velocities_window:
        velocities_list.pop(0)
        velocities_list.append((data.vx, data.vy))

def get_RobotToTarget(req):
    response = RobotToTargetResponse()
    global target_ok, target, robot, velocities_list

    if target_ok:
        response.dx = target.x - robot.x_pos
        response.dy = target.y - robot.y_pos
        rospy.loginfo("Target X position: %d Target Y position: %d", target.x, target.y)
        response.distance = (target.x - robot.x_pos)**2 + (target.y - robot.y_pos)**2
    else:
        response.dx = 0.0
        response.dy = 0.0

    response.average_vx = sum(x[0] for x in velocities_list) / len(velocities_list)
    response.average_vy = sum(y[0] for y in velocities_list) / len(velocities_list)
    
    return response

def robot_to_target_server():
    rospy.init_node('robot_to_target', anonymous=False)
    rospy.Subscriber("/target_pos", TargetPos, TargetPos_callback)
    rospy.Subscriber("/robot_pos_vel", RobotPosVel, RobotPosVel_callback)
    rospy.Service("robot_to_target_srv", RobotToTarget, get_RobotToTarget)
    print("Service up and running: Obtain Robot To Target data")
    rospy.spin()

if __name__ == "__main__":
    robot_to_target_server()
