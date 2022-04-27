if [[$# != 0 ]]; then
    echo "ERROR: No enough params"
    exit 1
fi
catkin_make
rosrun camera_calibration cameracalibrator.py --size $1x$2 --square $3 image:=/camera0/image_raw

