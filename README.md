# IDF-Autoware

IDF-Autoware is an integrated development framework that enables co-simulation and operation of Autoware using MATLAB/Simulink. The following functions are provided:

- Communication between Autoware and MATLAB/Simulink: By using this framework, communication between Autoware and MATLAB / Simulink becomes possible.
- Template generation: This function allows MATLAB template scripts and Simulink template models to be generated which include necessary information to create nodes for Autoware.
- rqt_graph_autoware plugin: This plugin can render node dependency for Autoware’s applications, such as sensing, perception, decision, and planning.
- GUI Tools (Runtime Manager for MATLAB/Simulink): With This GUI, the following functions can be execution:
	- Starting MATLAB, Simulink, and rqt_graph_autoware
	- Executing MATLAB scripts and Simulink models
	- Generating MATLAB template scripts and Simulink template models
	- Displaying node information

## Autoware

Integrated open-source software for urban autonomous driving. The following functions are supported:

- 3D Localization
- 3D Mapping
- Path Planning
- Path Following
- Accel/Brake/Steering Control
- Data Logging
- Car/Pedestrian/Object Detection
- Traffic Signal Detection
- Traffic Light Recognition
- Lane Detection
- Object Tracking
- Sensor Calibration
- Sensor Fusion
- Cloud-oriented Maps
- Connected Automation
- Smartphone Navigation
- Software Simulation
- Virtual Reality

Autoware is protected by BSD License. Please use it on your own responsibility. For safe use, we provide a ROSBAG-based simulation method for those who do not own real autonomous vehicles. In case that you use Autoware with real autonomous vehicles, **please formulate safety measures and assessment of risk before field testing.**

## License

* New BSD License
    * See LICENSE

## Spec Recommendation

- Number of CPU cores: 8
- RAM size: 32GB
- Storage size: 30GB

## Requirements

- MATLAB/Simulink
- Robotic System Toolbox
- ROS indigo(Ubuntu 14.04)
- OpenCV 2.4.10
- Qt 5.2.1 or higher
- CUDA(Optional)
- FlyCapture2(optional)

**Please use checkout revision before 2015/OCT/21 if you use Autoware on ROS hydro or Ubuntu 13.04, 13.10.**

### Install dependencies for Ubuntu 14.04 indigo

```
% sudo apt-get install ros-indigo-desktop-full ros-indigo-nmea-msgs ros-indigo-nmea-navsat-driver ros-indigo-sound-play ros-indigo-jsk-visualization
% sudo apt-get install libnlopt-dev freeglut3-dev qtbase5-dev libqt5opengl5-dev libssh2-1-dev libarmadillo-dev libpcap-dev gksu libgl1-mesa-dev
```

**NOTE: Please do not install ros-indigo-velodyne-pointcloud package. Please uninstall it if you already installed.**

https://github.com/jsk-ros-pkg/jsk_visualization**

## How to Build

```
$ cd $HOME
$ git clone https://github.com/CPFL/IDF-Autoware.git
$ cd ~/IDF-Autoware/ros/src
$ catkin_init_workspace
$ cd ../
$ ./catkin_make_release
```

## How to Start

```
$ cd $HOME/IDF-Autoware/ros
$ ./run
```


## Main Packages

### Localization
- ndt_localizer
- icp_localizer

### Detection
- lidar_tracker
- cv_tracker
- road_wizard

### Mission (Global) Planning
- lane_planner
- way_planner
- freespace_planner

### Motion (Local) Planning
- astar_planner
- lattice_planner
- dp_planner

### Vehicle Control
- waypoint_follower
- waypoint_maker

## Research Papers for Citation

1. S. Kato, E. Takeuchi, Y. Ishiguro, Y. Ninomiya, K. Takeda, and T. Hamada. "An Open Approach to Autonomous Vehicles", IEEE Micro, Vol. 35, No. 6, pp. 60-69, 2015. [![Link](http://online.qmags.com/MIC1115/default.aspx?sessionID=7CF18C36BF00A40746B87387B&cid=3230522&eid=19656&pg=62&mode=2#pg62&mode2)](http://online.qmags.com/MIC1115/default.aspx?sessionID=7CF18C36BF00A40746B87387B&cid=3230522&eid=19656&pg=62&mode=2#pg62&mode2)

## Demo Videos of IDF-Autoware

### Co-simulation
[![Public Road Demonstration](http://img.youtube.com/vi/X4d9VbXnPeg/mqdefault.jpg)](https://www.youtube.com/watch?v=X4d9VbXnPeg)

### Experiment Using A Real Autonomous vehicle
[![Public Road Demonstration](http://img.youtube.com/vi/Bd3MTIJCRws/mqdefault.jpg)](https://www.youtube.com/watch?v=Bd3MTIJCRws)

## Demo Videos of Autoware

### Public Road Demonstration
[![Public Road Demonstration](http://img.youtube.com/vi/5DaQBZvZwAI/mqdefault.jpg)](https://www.youtube.com/watch?v=5DaQBZvZwAI)

### Test Field Demonstration
[![Test Field Demonstration](http://img.youtube.com/vi/zujGfJcZCpQ/mqdefault.jpg)](https://www.youtube.com/watch?v=zujGfJcZCpQ)

## Instruction Videos

### Quick Start
[![Quick Start](http://img.youtube.com/vi/Ursbp2qs1u0/0.jpg)](https://www.youtube.com/watch?v=Ursbp2qs1u0)

### Loading map data
[![Loading map data](http://img.youtube.com/vi/EJa4PHnjdRY/0.jpg)](https://www.youtube.com/watch?v=EJa4PHnjdRY)

### Localization with GNSS
[![Localization with GNSS](http://img.youtube.com/vi/5bj7gkFlul0/0.jpg)](https://www.youtube.com/watch?v=5bj7gkFlul0)

### Localization without GNSS
[![Localization without GNSS](http://img.youtube.com/vi/ODlxMzGTJzw/0.jpg)](https://www.youtube.com/watch?v=ODlxMzGTJzw)

### Mapping
[![Mapping](http://img.youtube.com/vi/HlQ0ohxvlgA/0.jpg)](https://www.youtube.com/watch?v=HlQ0ohxvlgA)

### Detection
[![Detection](http://img.youtube.com/vi/UcoYqGniIkE/0.jpg)](https://www.youtube.com/watch?v=UcoYqGniIkE)

### Planning with ROSBAG
[![Planning with ROSBAG](http://img.youtube.com/vi/LZTCDbcjIdw/0.jpg)](https://www.youtube.com/watch?v=LZTCDbcjIdw)

### Planning with wf_simulator
[![Planning with wf_simulator](http://img.youtube.com/vi/HwB2NKqj2yg/0.jpg)](https://www.youtube.com/watch?v=HwB2NKqj2yg)

## Sample Data

[3D map of Moriyama in Nagoya](http://db3.ertl.jp/autoware/sample_data/sample_moriyama_data.tar.gz)

[ROSBAG data of Moriyama driving](http://db3.ertl.jp/autoware/sample_data/sample_moriyama_150324.tar.gz)

## Contact

Autoware Developers (<autoware@googlegroups.com>)

To subscribe the Autoware Developers ML,
- If you have a Google account, go to https://groups.google.com/d/forum/autoware, and click the **Apply to Join Group** button.
- If you don't have a Google account, send an email to autoware+subscribe@googlegroups.com.
