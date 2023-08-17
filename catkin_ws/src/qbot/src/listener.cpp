#include "ros/ros.h"
#include "std_msgs/Int64.h"
#include <iostream>
using namespace std;

void callback(const std_msgs::Int64::ConstPtr& msg)
{
    cout << "i recieved: " << msg->data <<endl;
}

int main(int argc, char** argv)
{
    ros::init(argc,argv,"listener");
    ros::NodeHandle n;
    
    ros::Subscriber sub = n.subscribe("chatter",10,callback);
    ros::spin();
    
    return 0;
}