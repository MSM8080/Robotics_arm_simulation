#! /usr/bin/env python3 
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy
# -------------------------------------------------------------------------------------
def callback(msg):
    mov.linear.x=0;mov.angular.x=0
    mov.linear.y=0;mov.angular.y=0
    mov.linear.z=0;mov.angular.z=0 
    # front & back
    if msg.axes[1]>0:                   # front
        mov.linear.x = int(msg.axes[1]*2)
    elif msg.axes[1]<0:                 # back
        mov.linear.x = int(msg.axes[1]*2)
    # right & left
    if msg.axes[3]<0:                   # right
        mov.angular.z = int(msg.axes[3]*-2)        
    elif msg.axes[3]>0:                 # left
        mov.angular.z = int(msg.axes[3]*-2)
    pup.publish(mov)    
    #print("front & back:{}\t\tright & left:{}\t\t".format(mov.linear.x,mov.angular.z)) 
# -------------------------------------------------------------------------------------
rospy.init_node('turtle_joy',anonymous=False)
pup = rospy.Publisher('/turtle1/cmd_vel',Twist,queue_size=10)
rate = rospy.Rate(10)
mov = Twist()
rospy.Subscriber("joy",Joy,callback)
rospy.spin()
