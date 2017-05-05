node = robotics.ros.Node('lane_rule')
green_waypoints_array_pub = robotics.ros.Publisher(node, '/green_waypoints_array', 'waypoint_follower/LaneArray');
traffic_waypoints_array_pub = robotics.ros.Publisher(node, '/traffic_waypoints_array', 'waypoint_follower/LaneArray');
red_waypoints_array_pub = robotics.ros.Publisher(node, '/red_waypoints_array', 'waypoint_follower/LaneArray');
vector_map_msgs_LaneArray_sub = robotics.ros.Subscriber(node, '/vector_map_info/lane', 'vector_map_msgs/LaneArray', @vector_map_info_lane_Callback);
vector_map_msgs_PointArray_sub = robotics.ros.Subscriber(node, '/vector_map_info/point', 'vector_map_msgs/PointArray', @vector_map_info_point_Callback);
runtime_manager_ConfigLaneRule_sub = robotics.ros.Subscriber(node, '/config/lane_rule', 'runtime_manager/ConfigLaneRule', @config_lane_rule_Callback);
vector_map_msgs_StopLineArray_sub = robotics.ros.Subscriber(node, '/vector_map_info/stop_line', 'vector_map_msgs/StopLineArray', @vector_map_info_stop_line_Callback);
waypoint_follower_LaneArray_sub = robotics.ros.Subscriber(node, '/lane_waypoints_array', 'waypoint_follower/LaneArray', @lane_waypoints_array_Callback);
vector_map_msgs_NodeArray_sub = robotics.ros.Subscriber(node, '/vector_map_info/node', 'vector_map_msgs/NodeArray', @vector_map_info_node_Callback);
vector_map_msgs_DTLaneArray_sub = robotics.ros.Subscriber(node, '/vector_map_info/dtlane', 'vector_map_msgs/DTLaneArray', @vector_map_info_dtlane_Callback);

vector_map_info_lane_Callback(~, msg)
end
vector_map_info_point_Callback(~, msg)
end
config_lane_rule_Callback(~, msg)
end
vector_map_info_stop_line_Callback(~, msg)
end
lane_waypoints_array_Callback(~, msg)
end
vector_map_info_node_Callback(~, msg)
end
vector_map_info_dtlane_Callback(~, msg)
end