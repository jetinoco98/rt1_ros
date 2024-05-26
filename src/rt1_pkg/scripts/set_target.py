#!/usr/bin/env python3

import rospy
import time
from actionlib import SimpleActionClient
from std_msgs.msg import Empty
from nav_msgs.msg import Odometry
from assignment_2_2023.msg import PlanningAction, PlanningGoal
from rt1_pkg.msg import TargetPos, RobotPosVel

class SetTargetNode:
    def __init__(self):
        """Initialize the ROS node, action client, subscribers, and publisher."""
        rospy.init_node('set_target')

        # Initialize SimpleActionClient for the 'reaching_goal' action
        self.action_client = SimpleActionClient('/reaching_goal', PlanningAction)
        # Initialize publisher for 'RobotPosVel'
        self.pub = rospy.Publisher('/robot_pos_vel', RobotPosVel, queue_size=10)

        # Subscribe to topics
        rospy.Subscriber('/target_pos', TargetPos, self.target_callback)
        rospy.Subscriber('/odom', Odometry, self.state_callback)
        rospy.Subscriber('/cancel_target', Empty, self.cancel_callback)

        # Timer for periodic callbacks
        self.pose_timer = rospy.Timer(rospy.Duration(0.5), self.timer_callback)

        # Variables to store feedback
        self.feedback_x = 0.0
        self.feedback_y = 0.0

        # Wait for the action server to be available
        rospy.loginfo("Waiting for action server to start...")
        self.action_client.wait_for_server(rospy.Duration(2.0))

        rospy.loginfo("Node ready: Set Target")

    def timer_callback(self, event):
        """Callback function to print the robot's current position if the goal is active."""
        # Only print the robot's current position if the goal is active (state 1)
        if self.action_client.get_state() == 1:
            rospy.loginfo("Robot's current position x = %f y = %f", self.feedback_x, self.feedback_y)

    def cancel_callback(self, cancel_message):
        """Callback function to handle cancel requests."""
        self.action_client.cancel_goal()
        rospy.loginfo("Robot's goal has been canceled")

    def target_callback(self, target_message):
        """Callback function to handle new target position updates."""
        rospy.loginfo("New Target arrived")
        # Creating a goal for the action server
        goal = PlanningGoal()
        goal.target_pose.pose.position.x = target_message.x
        goal.target_pose.pose.position.y = target_message.y
        # Sending the goal to the action server with callbacks for different states
        self.action_client.send_goal(goal, done_cb=self.done_callback, active_cb=self.active_callback, feedback_cb=self.feedback_callback)
        rospy.loginfo("New Goal has been sent")

    def state_callback(self, odometry_message):
        """Callback function to handle robot state updates from the odometry topic."""
        # Construct a new message for the robot's position and velocity
        robot_state_message = RobotPosVel()
        robot_state_message.x = odometry_message.pose.pose.position.x
        robot_state_message.y = odometry_message.pose.pose.position.y
        robot_state_message.vx = odometry_message.twist.twist.linear.x
        robot_state_message.vy = odometry_message.twist.twist.linear.y
        # Publish the new 'RobotPosVel' type message
        self.pub.publish(robot_state_message)

    def done_callback(self, state, result):
        """Callback function to handle the completion of the goal."""
        rospy.loginfo("Goal ended in state [%s]", state)
        rospy.loginfo("Write the new target coordinates if you want to continue")

    def active_callback(self):
        """Callback function to handle an active goal."""
        rospy.loginfo("Goal just went active")

    def feedback_callback(self, feedback):
        """Callback function to handle feedback during goal execution."""
        self.feedback_x = feedback.actual_pose.position.x
        self.feedback_y = feedback.actual_pose.position.y

    def run(self):
        """Run the ROS node and handle shutdown."""
        rospy.spin()
        rospy.signal_shutdown("Ending...")
        time.sleep(2)

if __name__ == '__main__':
    try:
        node = SetTargetNode()
        node.run()
    except rospy.ROSInterruptException:
        rospy.logerr("ROS node initialization failed or interrupted.")
