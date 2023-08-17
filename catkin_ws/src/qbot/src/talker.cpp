#include "ros/ros.h"
#include "std_msgs/Int64.h"
#include <iostream>


int main(int argc, char ** argv)
{
    
    ros::init(argc,argv,"talker");
    ros::NodeHandle n;
    int freq;
    n.getParam("freq",freq);
    ros::Publisher pub = n.advertise<std_msgs::Int64>("chatter",10);
    ros::Rate rate(freq);
    int count = 0;
    while(ros::ok())
    {
        std_msgs::Int64 msg;
        msg.data = count;
        count++;
        pub.publish(msg);
        rate.sleep();        
    }
    return 0;
}