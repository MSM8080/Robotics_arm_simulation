#!/usr/bin/env python
# license removed for brevity
# ---------------------------------------------------------
import rospy
from qbot.msg import joy_data
# ---------------------------------------------------------
def joystick_node():

    rospy.init_node('joystick_node', anonymous=True)
    pub = rospy.Publisher('joy', joy_data, queue_size=10)
    rate = rospy.Rate(1) # 10hz
    msg = joy_data()
    
    while not rospy.is_shutdown():
        str_lst = []
        int_lst = []
        with open("Data.txt", "r") as file:
            for line in file:
                str_lst.append(line.rstrip())
            #print(str_lst)
            #print('\n')
            for itm in str_lst:
                itm = itm[:-1]
                # print(itm)
                for i in itm:
                    lst = itm.split(',')
                # print(lst)
                int_lst.append(lst)
            #print(int_lst)
        for ls in int_lst:
            for i in range(0, len(ls)):
                ls[i] = int(ls[i])
                #print(type(i))
            msg.Data = ls
            print(msg)
            pub.publish(msg)
            rate.sleep()

# ---------------------------------------------------------
if __name__ == '__main__':
    try:
        joystick_node()
    except rospy.ROSInterruptException:
        pass


