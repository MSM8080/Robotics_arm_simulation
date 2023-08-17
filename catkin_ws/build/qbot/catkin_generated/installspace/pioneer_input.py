#!/usr/bin/env python3
# ---------------------------------------------------------
import rospy
from geometry_msgs.msg import Pose2D    
# ---------------------------------------------------------
def talker():
    rospy.init_node('pioneer_input', anonymous=False)
    pub = rospy.Publisher("/sim_ros_interface/pioneer_vel", Pose2D, queue_size=10)
    rate = rospy.Rate(1)  # 10hz
    msg = Pose2D()
    msg.x = 6
    msg.y = 3
    while not rospy.is_shutdown():
        pub.publish(msg)
        rate.sleep()

# ---------------------------------------------------------
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
