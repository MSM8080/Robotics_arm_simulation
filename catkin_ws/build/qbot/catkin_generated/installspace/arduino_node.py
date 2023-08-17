#!/usr/bin/env python3
# license removed for brevity
# ---------------------------------------------------------
import rospy
from std_msgs.msg import UInt16
# ---------------------------------------------------------
def arduino_node():

    rospy.init_node('arduino_node', anonymous=False)
    pub = rospy.Publisher('toggle_led', UInt16, queue_size=10)
    rate = rospy.Rate(1)  # 10hz
    msg = UInt16 ()
    while not rospy.is_shutdown():
            st = input("Enter: ")
            msg.data  = int(st)
            print(msg)
            pub.publish(msg)
            rate.sleep()


# ---------------------------------------------------------
if __name__ == '__main__':
    try:
        arduino_node()
    except rospy.ROSInterruptException:
        pass

