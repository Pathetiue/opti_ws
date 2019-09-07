# opti_ws
To obtain state feedback data from optitrack, just do as following: 
1. build the ros project, in the folder of /opti_ws/
    catkin_build
2. roscore
3. rosrun bebop_odom opti_odom.py
4. rostopic echo /agent/opti_odm
