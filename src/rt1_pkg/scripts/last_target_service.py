import rospy
from rt1_pkg.msg import TargetPos
from rt1_pkg.srv import LastTarget, LastTargetResponse

class LastTargetServer:
    """
    A ROS node that provides a service to get the last target position.

    This node initializes the necessary subscribers and services to communicate
    with other ROS nodes. It subscribes to the "/target_pos" topic to receive
    the latest target position and provides a service to return the last target position.

    Attributes:
        last_target_position (TargetPos): The last received target position.
    """

    def __init__(self):
        """
        Initialize the ROS node, subscriber, and service.
        """
        self.last_target_position = None
        
        rospy.init_node('last_target')

        #: Subscriber to the "/target_pos" topic
        rospy.Subscriber("/target_pos", TargetPos, self.target_pos_callback)
        
        #: Service to provide the last target position
        rospy.Service('srv_last_target', LastTarget, self.set_last_target)
        
        rospy.loginfo("Service is up and running: Obtain target position.")
        
        rospy.spin()

    def target_pos_callback(self, data):
        """
        Callback function to handle updates from the "/target_pos" topic.
        
        Args:
            data (TargetPos): The latest target position message.
        """
        self.last_target_position = data

    def set_last_target(self, req):
        """
        Callback function for the "/srv_last_target" service.
        
        Args:
            req: The service request (not used).
            
        Returns:
            LastTargetResponse: The response containing the last target position.
        """
        res = LastTargetResponse()
        if self.last_target_position:
            res.x = self.last_target_position.x
            res.y = self.last_target_position.y
        else:
            rospy.logwarn("The target has not been obtained at this moment.")
        return res

if __name__ == "__main__":
    try:
        LastTargetServer()
    except rospy.ROSInterruptException:
        rospy.logerr("ROS node initialization failed or interrupted.")

