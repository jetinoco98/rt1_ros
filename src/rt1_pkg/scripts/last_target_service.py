#!/usr/bin/env python3

import rospy
from rt1_pkg.msg import TargetPos
from rt1_pkg.srv import LastTarget, LastTargetResponse

last_target = None

def target_pos_callback(data):
    "Last robot target coordinates received"
    global last_target
    last_target = data

def set_last_target(req):
    res = LastTargetResponse()
    if last_target:
        res.x = last_target.x
        res.y = last_target.y
    else:
        rospy.logwarn("The target has not been obtained at the moment.")
    return res

def last_target_server():
    rospy.init_node('last_target')
    rospy.Subscriber("/target_pos", TargetPos, target_pos_callback)
    rospy.Service('last_target', LastTarget, set_last_target)
    print("Service up and running: Obtain target position.")
    rospy.spin()

if __name__ == "__main__":
    last_target_server()


