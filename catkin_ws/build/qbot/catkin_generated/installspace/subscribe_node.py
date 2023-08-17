# license removed for brevity
#!/usr/bin/env python
# ---------------------------------------------------------
import rospy
from std_msgs.msg import String
# ---------------------------------------------------------
def subscribe_node():
    rospy.init_node('subscribe_node', anonymous=False)
    pub = rospy.Publisher('chatter', UInt16, queue_size=10)
    rate = rospy.Rate(1)  # 10hz
    msg = String()
    
    while not rospy.is_shutdown():
    	st = input("Enter: ")
    	msg.data = st
    	print(msg)
    	pub.publish(msg)
    	rate.sleep()
# ---------------------------------------------------------
if __name__ == '__main__':
    try:
        subscribe_node()
    except rospy.ROSInterruptException:
        pass
