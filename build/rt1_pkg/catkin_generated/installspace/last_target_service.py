#!/usr/bin/env python3

import rospy
from rt1_pkg.msg import TargetPos
from rt1_pkg.srv import LastTarget, LastTargetResponse

# Empty variable declaration
last_target = None

# Callback function used to handle the updates from the "/target_pos" topic
def target_pos_callback(data):
    global last_target
    last_target = data

# Callback function for the service "/srv_last_target"
def set_last_target(req):
    res = LastTargetResponse()
    if last_target:
        res.x = last_target.x
        res.y = last_target.y
    else:
        rospy.logwarn("The target has not been obtained at this moment.")
    return res

# Initialization of the  ROS node
# Setting up subscribers and services
def last_target_server():
    rospy.init_node('last_target')
    # Subscriber
    rospy.Subscriber("/target_pos", TargetPos, target_pos_callback)
    # Service
    rospy.Service('srv_last_target', LastTarget, set_last_target)
    print("Service up and running: Obtain target position.")
    rospy.spin()

if __name__ == "__main__":
    last_target_server()


