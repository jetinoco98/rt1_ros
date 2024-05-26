#!/usr/bin/env python3

import rospy
import math
from rt1_pkg.srv import RobotToTarget, RobotToTargetResponse
from rt1_pkg.msg import RobotPosVel
from rt1_pkg.msg import TargetPos 

class RobotToTargetServer:
    def __init__(self):
        """
        Initializes the ROS node, sets up the subscribers and the service.
        """
        self.velocities_list = []
        self.target_acquired = False
        
        # Get parameter for the average velocity window
        self.average_velocities_window = rospy.get_param('average_velocities_window', 10)
        
        # Initialize position and velocity data
        self.robot = RobotPosVel()
        self.target = TargetPos()
        
        rospy.init_node('robot_to_target', anonymous=False)
        
        # Subscribers
        rospy.Subscriber("/target_pos", TargetPos, self.target_pos_callback)
        rospy.Subscriber("/robot_pos_vel", RobotPosVel, self.robot_pos_vel_callback)
        
        # Service
        rospy.Service("srv_robot_to_target", RobotToTarget, self.get_robot_to_target)
        
        rospy.loginfo("Service up and running: Obtain distance to target and average velocities.")
        rospy.spin()

    def target_pos_callback(self, data):
        """
        Callback function to handle updates from the "/target_pos" topic.
        
        Args:
            data (TargetPos): The latest target position message.
        """
        self.target.x = data.x
        self.target.y = data.y
        self.target_acquired = True

    def robot_pos_vel_callback(self, data):
        """
        Callback function to handle updates from the "/robot_pos_vel" topic.
        
        Args:
            data (RobotPosVel): The latest robot position and velocity message.
        """
        self.robot.x = data.x
        self.robot.y = data.y
        
        # Update the velocities list
        if len(self.velocities_list) < self.average_velocities_window:
            self.velocities_list.append((data.vx, data.vy))
        else:
            self.velocities_list.pop(0)
            self.velocities_list.append((data.vx, data.vy))

    def get_robot_to_target(self, req):
        """
        Callback function for the "/srv_robot_to_target" service.
        
        Args:
            req: The service request (not used).
        
        Returns:
            RobotToTargetResponse: The response containing the distance to the target and average velocities.
        """
        response = RobotToTargetResponse()
        
        if self.target_acquired:
            # Obtain the target position with respect to the robot
            response.dx = self.target.x - self.robot.x
            response.dy = self.target.y - self.robot.y
            
            # Log the target position information
            rospy.loginfo("Target X position: %f Target Y position: %f", self.target.x, self.target.y)
            
            # Calculate the Euclidean distance
            response.distance = math.hypot(response.dx, response.dy)
        else:
            response.dx = 0.0
            response.dy = 0.0
            response.distance = 0.0
        
        # Calculate the average velocities
        if self.velocities_list:
            response.average_vx = sum(x[0] for x in self.velocities_list) / len(self.velocities_list)
            response.average_vy = sum(y[1] for y in self.velocities_list) / len(self.velocities_list)
        else:
            response.average_vx = 0.0
            response.average_vy = 0.0
        
        return response

if __name__ == "__main__":
    try:
        RobotToTargetServer()
    except rospy.ROSInterruptException:
        rospy.logerr("ROS node initialization failed or interrupted.")
