#!/usr/bin/env python3

import rospy
from actionlib import SimpleActionClient
from nav_msgs.msg import Odometry
from assignment_2_2023.msg import PlanningAction, PlanningGoal
from rt1_pkg.msg import TargetPos, Cancel, RobotPosVel
import time

def timer_callback(event):
    # Only print the robot's current position if there is an active state on the goal.
    if ac.get_state() == 3:
        rospy.loginfo("Robot's current position x = %f y = %f", feedback_x, feedback_y)

# Callback function for handling cancel requests
def cancel_callback(msg):
    ac.cancel_goal()
    rospy.loginfo("Robot's goal has been canceled")

# Callback function for handling target position updates
def target_callback(msg):
    rospy.loginfo("New Target arrived")
    # Creating a goal for the action server
    goal = PlanningGoal()
    goal.target_pose.pose.position.x = msg.x
    goal.target_pose.pose.position.y = msg.y
    # Sending the goal to the action server with callbacks for different states
    ac.send_goal(goal, done_cb=done_callback, active_cb=active_callback, feedback_cb=feedback_callback)
    rospy.loginfo("New Goal has been sent")

def state_callback(msg):
    # Message obtained from /odom
    # Custom message constructed to /robot_pos_vel
    robot_state_msg = RobotPosVel()
    robot_state_msg.x = msg.pose.pose.position.x
    robot_state_msg.y = msg.pose.pose.position.y
    robot_state_msg.vx = msg.twist.twist.linear.x
    robot_state_msg.vy = msg.twist.twist.linear.y
    # Publish new 'RobotPosVel' type message
    pub.publish(robot_state_msg)

# Callback function for handling the completion of the goal
def done_callback(state, result):
    rospy.loginfo("Ended in state [%s]", state)
    rospy.loginfo("Write the new target coordinates if you want to continue")

# Callback function for an active goal
def active_callback():
    pass

# Callback function for receiving feedback during goal execution
def feedback_callback(feedback):
    global feedback_x, feedback_y
    feedback_x = feedback.actual_pose.position.x
    feedback_y = feedback.actual_pose.position.y

# MAIN FUNCTION
if __name__ == '__main__':
    rospy.init_node('set_target')

    # Creating a SimpleActionClient for the 'reaching_goal' action
    ac = SimpleActionClient('/reaching_goal', PlanningAction)
    # Getting the namespace
    n = rospy.get_namespace()
    # Waiting for the action server to be available
    ac.wait_for_server(rospy.Duration(2.0))

    # Subscribers
    target_sub = rospy.Subscriber('/target_pos', TargetPos, target_callback)
    state_sub = rospy.Subscriber('/odom', Odometry, state_callback)
    cancel_sub = rospy.Subscriber('/cancel_target', Cancel, cancel_callback)
    # Publishers
    pub = rospy.Publisher('/robot_pos_vel', RobotPosVel, queue_size=10)
    # Timer for periodic callbacks
    pose_timer = rospy.Timer(rospy.Duration(0.5), timer_callback)

    rospy.loginfo("Node ready: Set Target")
    # Starting the ROS node and waiting for events
    rospy.spin()
    # Signaling shutdown and waiting for a short duration before exiting
    rospy.signal_shutdown("Ending...")
    time.sleep(2)

