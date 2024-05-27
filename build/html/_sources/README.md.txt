# RESEARCH TRACK 1
ASSIGNMENT 2
===

A ROS-based Implementation using the python language, focused on the nuances of the development action clients, services and custom messages for an already developed
program based on the automatic control of a robot thoughout a simulated environment.

In essence, the following implementations were achieved:
1. The creation of a node for the selection (in real-time) of a new target for the drone.
2. The use of drone obtained data through custom messages.
3. The creation of a service that returns the coordinates selected by the user.
4. The creation of a service that uses the data on the created custom messages to show the user distance and average velocity of the robot.

## How to run the program
All of the steps provided from this point onwards must be inputted on the Linux terminal, inside the workspace containing the files.

First we need to have roscore running in the background.
```
roscore &
```

On new machines the workspace needs to be rebuilt.
```
catkin_make
```

Then we must execute the already written launch file inside our workspace.
```
roslaunch rt1_pkg project.launch
```

## What to do during execution
Because of the new implementations made during this work, the user can now set a new target, change it even during execution of the process to reach it, and even cancel it.
The first and second commands uses 'rostopic', while the third and fourth uses 'rosservice'.

### 1. Select new target coordinates
```
rostopic pub /target_pos rt1_pkg/TargetPos "x: 2.0 y: 2.0"
```

### 2. Cancel 
```
rostopic pub /cancel_target rt1_pkg/Cancel "{}" 
```

### 3. Obtain the last target
```
rosservice call /srv_last_target 
```

### 4. Obtain data about the robot with respect to the target (distance, velocity)
```
rosservice call /srv_robot_to_target
```

## Code Explanation (with pseudocode)
We can find all related file inside the 'scripts' folder, as everything was programmed using the Python language.
- The action client was programmed inside the 'set_target.py' file.
- The services were programmed inside the 'last_target_service.py' and 'robot_to_target_service.py' files.

### set_target.py
```
function timer_callback()
    if goal has active state
        Print current position to logs
function cancel_callback()
    Handle cancel requests
    Log into rospy
function  target_callback()
    Handle target position updates
    Create a goal for the action server
    Send the goal to the action server
function state_callback()
    Obtain message from /odom
    Construct custom message
    Publish the data
function done_callback()
    Handle completion of the goal
    Log information to rospy
function feedback_callback()
    Handle the feedback data during execution
Main function
    Initialize the ROS node
    Create a SimpleActionClient
    Get the namespace
    Wait for the action server
    Set up subscribers
    Set up publishers
    Set up timer for periodic callbacls
    Start of the ROS node
    Wait for events
    Signal in case of shutdown
    Wait before exiting
```

### last_target_service.py
```
function target_pos_callback()
    Handle updates from the target position
function set_last_target()
    if response obtained for last target position:
        Set the data in the message form
    else
        log response into respy
function last_target_server()
    Initialize the Ros node
    Set up subscribers and services
    Waiting for events
Execution of functions / running the ROS node     
```

### robot_to_target_service.py
```
Getting parameter for average velocity window
Obtaining the data from the custom messages

function Target_pos_callback()
    Handle the updates from the target position
function RobotPosVel_callback()
    Handle the updates from the position and velocities
    if length of velocity list < size of window
        add velocity to list
    elif length of velocity list == size of window
        delete oldest recorded velocity
        add the newest velocity to the list
function get_RobotToTarget()
    Creating a response object
    Logging the target position information into rospy
    Math function to obtain the distance from two coordinates
function robot_to_target_server()
    Initialization of the ROS node
    Setting up subscribers and services
    Waiting for events
Main function call: Run the ROS node 
```


