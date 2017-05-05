node = robotics.ros.Node('lane_select')
base_waypoints_pub = robotics.ros.Publisher(node, '/base_waypoints', 'waypoint_follower/lane');
runtime_manager_ConfigLaneSelect_sub = robotics.ros.Subscriber(node, '/config/lane_select', 'runtime_manager/ConfigLaneSelect', @config_lane_select_Callback);
waypoint_follower_LaneArray_sub = robotics.ros.Subscriber(node, '/traffic_waypoints_array', 'waypoint_follower/LaneArray', @traffic_waypoints_array_Callback);

config_lane_select_Callback(~, msg)
end
traffic_waypoints_array_Callback(~, msg)
end