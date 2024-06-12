import rospy
import time
from actionlib import SimpleActionClient
from std_msgs.msg import Empty
from nav_msgs.msg import Odometry
from assignment_2_2023.msg import PlanningAction, PlanningGoal
from rt1_pkg.msg import TargetPos, RobotPosVel

class SetTargetNode:
    """
    A ROS node that handles setting target positions for a robot.

    This node initializes the necessary action clients, subscribers, and publishers
    to communicate with other ROS nodes. It subscribes to topics to receive target
    positions and odometry data, and publishes the robot's position and velocity.

    Attributes:
        action_client (SimpleActionClient): The action client for the 'reaching_goal' action.
        pub (Publisher): The ROS publisher for the robot's position and velocity.
        feedback_x (float): The x-coordinate of the feedback from the robot's current position.
        feedback_y (float): The y-coordinate of the feedback from the robot's current position.
    """

    def __init__(self):
        """
        Initialize the ROS node, action client, subscribers, and publisher.
        """
        rospy.init_node('set_target')

        #: Initialize SimpleActionClient for the 'reaching_goal' action
        self.action_client = SimpleActionClient('/reaching_goal', PlanningAction)

        #: Initialize publisher for 'RobotPosVel'
        self.pub = rospy.Publisher('/robot_pos_vel', RobotPosVel, queue_size=10)

        #: Subscribe to topics
        rospy.Subscriber('/target_pos', TargetPos, self.target_callback)
        rospy.Subscriber('/odom', Odometry, self.state_callback)
        rospy.Subscriber('/cancel_target', Empty, self.cancel_callback)

        #: Timer for periodic callbacks
        self.pose_timer = rospy.Timer(rospy.Duration(0.5), self.timer_callback)

        #: Variables to store feedback
        self.feedback_x = 0.0
        self.feedback_y = 0.0

        #: Wait for the action server to be available
        rospy.loginfo("Waiting for action server to start...")
        self.action_client.wait_for_server(rospy.Duration(2.0))

        rospy.loginfo("Node ready: Set Target")

    def timer_callback(self, event):
        """
        Callback function to print the robot's current position if the goal is active.

        :param event: The timer event triggering this callback.
        """
        if self.action_client.get_state() == 1:
            rospy.loginfo("Robot's current position x = %f y = %f", self.feedback_x, self.feedback_y)

    def cancel_callback(self, cancel_message):
        """
        Callback function to handle cancel requests.

        :param cancel_message: The message indicating a cancel request.
        """
        self.action_client.cancel_goal()
        rospy.loginfo("Robot's goal has been canceled")

    def target_callback(self, target_message):
        """
        Callback function to handle new target position updates.

        :param target_message: The message containing the new target position.
        """
        rospy.loginfo("New Target arrived")
        goal = PlanningGoal()
        goal.target_pose.pose.position.x = target_message.x
        goal.target_pose.pose.position.y = target_message.y
        self.action_client.send_goal(goal, done_cb=self.done_callback, active_cb=self.active_callback, feedback_cb=self.feedback_callback)
        rospy.loginfo("New Goal has been sent")

    def state_callback(self, odometry_message):
        """
        Callback function to handle robot state updates from the odometry topic.

        :param odometry_message: The odometry message containing the robot's state.
        """
        robot_state_message = RobotPosVel()
        robot_state_message.x = odometry_message.pose.pose.position.x
        robot_state_message.y = odometry_message.pose.pose.position.y
        robot_state_message.vx = odometry_message.twist.twist.linear.x
        robot_state_message.vy = odometry_message.twist.twist.linear.y
        self.pub.publish(robot_state_message)

    def done_callback(self, state, result):
        """
        Callback function to handle the completion of the goal.

        :param state: The state of the action upon completion.
        :param result: The result of the action.
        """
        rospy.loginfo("Goal ended in state [%s]", state)
        rospy.loginfo("Write the new target coordinates if you want to continue")

    def active_callback(self):
        """
        Callback function to handle an active goal.
        """
        rospy.loginfo("Goal just went active")

    def feedback_callback(self, feedback):
        """
        Callback function to handle feedback during goal execution.

        :param feedback: The feedback message from the action server.
        """
        self.feedback_x = feedback.actual_pose.position.x
        self.feedback_y = feedback.actual_pose.position.y

    def run(self):
        """
        Run the ROS node and handle shutdown.
        """
        rospy.spin()
        rospy.signal_shutdown("Ending...")
        time.sleep(2)

if __name__ == '__main__':
    try:
        node = SetTargetNode()
        node.run()
    except rospy.ROSInterruptException:
        rospy.logerr("ROS node initialization failed or interrupted.")

