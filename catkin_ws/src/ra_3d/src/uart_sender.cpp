#include <iostream>
#include "ros/ros.h"
#include <libserial/SerialPort.h>
#include <std_msgs/Int8.h>
using namespace std;
using namespace LibSerial;


int main(int argc ,char **argv)
{
    char i= '0';

    ros::init(argc,argv,"uart_sender");
    ros::NodeHandle n;
    ros::Publisher pub = n.advertise<std_msgs::Int8>("uart",10);
    ros::Rate rate(10);
    
    try 
    {
        SerialPort serial_port;
        serial_port.Open("dev/ttyUSB0");
        if (!serial_port.IsOpen()) 
        {
            throw LibSerial::OpenFailed("Failed to open the serial port!");
        }

        serial_port.SetBaudRate(BaudRate::BAUD_115200);
        serial_port.SetCharacterSize(CharacterSize::CHAR_SIZE_8);
        serial_port.SetParity(Parity::PARITY_NONE);
        serial_port.SetStopBits(StopBits::STOP_BITS_1);

        while(ros::ok())
        {
            std_msgs::Int8 msg;
            cout << "Enter: ";
            cin >> i;
            msg.data = i;
            // serial_port.WriteByte(i);
            pub.publish(msg);
            rate.sleep();
        }

        serial_port.Close();
    } 

    catch (const LibSerial::OpenFailed& e) 
    {
        cerr << "Exception caught (Open Port Failed): " << e.what() << std::endl;
    }  

    return 0;
}