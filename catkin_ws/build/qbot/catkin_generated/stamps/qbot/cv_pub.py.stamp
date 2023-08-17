#!/usr/bin/env python3
import rospy
from sensor_msgs.msg import Image
import cv2
from cv_bridge import CvBridge

def publisher():
    rospy.init_node('cv_publisher')
    pub = rospy.Publisher('cam', Image, queue_size=10)
    rate = rospy.Rate(10)
    cap = cv2.VideoCapture(0)
    br = CvBridge()

    while not rospy.is_shutdown():
        ret, frame = cap.read()
        new_frame = cv2.resize(frame, (720,480))
        (w,h,depth) = frame.shape
        print (depth)
        if (ret == True):
            pub.publish(br.cv2_to_imgmsg(new_frame))
            rate.sleep()

publisher()