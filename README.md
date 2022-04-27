# Calibration_ROS
### GETTING START
#### prepare
```
OpenCV 4 (which is already in NX) or OpenCV3
ROS Melodic which can be without the update  ( plz fllow the steps in http://wiki.ros.org/melodic/Installation/Ubuntu )
```
#### clone to ur dir
```
git clone https://github.com/bpz2209/Calibration_ROS.git
cd Calibration_ROS
```
### BUILD
```
sudo cp libMVSDK.so /lib/
catkin_make
chmod +x devel/_setup_util.py
source devel/setup.bash
```
### CALIBRATION
```
roscore
```
and then enter to a new terminal and open the camera:
```
bash camera.sh
```
finally, create a new terminal and begin to run the calibration:
```
bash cmd.sh N M Square
(chessboard size as NxM, counting interior corners, chessboard square size in meters)
(e.g bash cmd.sh 11 7 0.091)
```
### COMMON PROBLEM
#### 1.  cv_bridge
Like
```
Project 'cv_bridge' specifies '/home/nano/catkin_ws/src/vision_opencv/cv_bridge/include' as an include dir, which is not found.  
It does neither exist as an absolute directory nor in blabla
```
##### solved
```
sudo vi  /opt/ros/melodic/share/cv_bridge/cmake/cv_bridgeConfig.cmake
find the line 96 and change the path to your own opencv
(e.g. 
CHANGE if(NOT "include;/usr/include;/usr/include/opencv " STREQUAL " ")
TO if(NOT "include;/usr/include/opencv4;/usr/include/opencv4 " STREQUAL " ")
)
And catkin_make again
```

