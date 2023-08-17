# license removed for brevity
#!/usr/bin/env python
# ---------------------------------------------------------
import rospy
from qbot.msg import joy_data
# ---------------------------------------------------------
def callback(msg):
    #print(msg)
    if msg.Data[0] == 9:
        print("You will hit the wall A !")
    elif msg.Data[1] == 9:
        print("You will hit the wall B !")
    elif msg.Data[0] == 7 and msg.Data[1] == 4:
        print("Stop now you are in a great danger!")
    elif msg.Data[0] == 1 and msg.Data[1] == 8:
        print("Stop now you are in a great danger!")
    elif msg.Data[0] == 6 and msg.Data[1] == 1:
        print("Stop now you are in a great danger!")
# ---------------------------------------------------------
def safety_node():
    rospy.init_node('safety_node', anonymous=False)
    rospy.Subscriber("pose", joy_data, callback)
    rospy.spin()
# ---------------------------------------------------------
if __name__ == '__main__':
    safety_node()