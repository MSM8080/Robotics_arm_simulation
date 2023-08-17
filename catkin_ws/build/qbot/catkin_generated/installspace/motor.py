#! /usr/bin/env python3 
from multiprocessing.context import ForkContext
from turtle import left, right
import rospy
from sensor_msgs.msg import Joy
# --------------
def callback(msg):
    front = 0;back=0;right=0;left=0 
    # front & back
    if msg.axes[1]>0:
        front = msg.axes[1]*100
    elif msg.axes[1]<0:
        back = msg.axes[1]*-100
    else:
        front = 0
        back = 0
    # right & left
    if msg.axes[0]<0:
        right = msg.axes[0]*-100
    elif msg.axes[0]>0:
        left = msg.axes[0]*100
    else:
        right = 0
        left = 0    
         
    print("front:{}\t\tback:{}\t\tright:{}\t\tleft:{}\t\t".format(round(front,4),round(back,4),round(right,4),round(left,4))) 
# --------------
def listener():
    rospy.init_node('motor',anonymous=False)
    rospy.Subscriber("joy",Joy,callback)
    rospy.spin()
# --------------
if __name__ == '__main__':
    listener()