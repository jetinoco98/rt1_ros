import rospy
from rt1_pkg.msg import TargetPos
from rt1_pkg.srv import LastTarget, Response

prev_target = None

def callback(data):
    "Last robot target coordinates received"
    global prev_target
    prev_target = data

def logic_prev_target(req):
    res = Response()
    if prev_target:
        res.x = prev_target.x
        res.y = prev_target.y
    else:
        rospy.logwarn("The target has not been obtained at the moment.")
    return res

def main():
    rospy.init_node('prev_target')
    rospy.Subscriber("/robot_target", TargetPos, callback)
    rospy.Service('prev_target', LastTarget, logic_prev_target)
    rospy.loginfo("Service up and running: Obtain target position.")
    rospy.spin()

if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass

