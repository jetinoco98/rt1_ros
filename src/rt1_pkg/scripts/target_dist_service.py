import rospy
from rt1_pkg.srv import RobotToTarget, Response
from rt1_pkg.msg import RobotPosVel
from rt1_pkg.msg import TargetPos


velocities_list = []
average_vel_window = rospy.get_param('average_vel_window', default=15)
target_ok = False
robot = RobotPosVel()
target = TargetPos()

def logic_TargetPos(data):
    global target_ok, target
    target.x = data.x
    target.y = data.y
    target_ok = True

def logic_RobotPosVel(data):
    global velocities_list
    robot.x_pos = data.x_pos
    robot.y_pos = data.y_pos
    if len(velocities_list) < average_vel_window:
        velocities_list.append((data.x_vel, data.y_vel))
    elif len(velocities_list) == average_vel_window:
        velocities_list.pop(0)
        velocities_list.append((data.x_vel, data.y_vel))

def logic_target_distance(req):
    response = Response()
    global target_ok, target, robot, velocities_list

    if target_ok:
        response.dx = target.x - robot.x_pos
        response.dy = target.y - robot.y_pos
        rospy.loginfo("Target X position: %d Target Y position: %d", target.x, target.y)
        response.distance = (target.x - robot.x_pos)**2 + (target.y - robot.y_pos)**2
    else:
        response.dx = 0.0
        response.dy = 0.0

    response.av_speed_x = sum(x[0] for x in velocities_list) / len(velocities_list)
    response.av_speed_y = sum(y[1] for y in velocities_list) / len(velocities_list)
    
    return response

def main():
    rospy.init_node('obtain_target_distance', anonymous=False)
    rospy.Subscriber("/TargetPos", TargetPos, logic_TargetPos)
    rospy.Subscriber("/RobotPosVel", RobotPosVel, logic_RobotPosVel)
    rospy.Service("get_target_distance", RobotToTarget, logic_target_distance)
    rospy.spin()

if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass
