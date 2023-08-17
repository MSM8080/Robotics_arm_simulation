# license removed for brevity
#!/usr/bin/env python
# ---------------------------------------------------------
import rospy
from std_msgs.msg import String 
from qbot.msg import joy_data           
# ---------------------------------------------------------
def servo_node():
    rospy.init_node('servo_node', anonymous=False)
    pub = rospy.Publisher('servo',joy_data, queue_size=10)
    rate = rospy.Rate(1)  # 10hz
    msg = joy_data()
    
    while not rospy.is_shutdown():
        ls = []
        st1 = input("Enter dire: ") # Right (r) | left (l)
        st2 = input("Enter speed: ") # spedd (0,1,2,3,4)
        ls.append(str(st1))
        ls.append(str(st2))
        print(type(ls[0]))
        print(type(ls[1]))
        msg.Data = ls
        pub.publish(msg)
        #print(msg)
        rate.sleep()
# ---------------------------------------------------------
if __name__ == '__main__':
    try:
        servo_node()
    except rospy.ROSInterruptException:
        pass
