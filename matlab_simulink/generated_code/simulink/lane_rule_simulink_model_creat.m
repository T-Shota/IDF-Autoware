simulink;
new_system('lane_rule');
add_block('robotlib/Blank Message', 'lane_rule/waypoint_follower::LaneArray0');
set_param('lane_rule/waypoint_follower::LaneArray0', 'messageType', 'waypoint_follower/LaneArray');
set_param('lane_rule/waypoint_follower::LaneArray0', 'Position', [70, 50, 200, 120]);
portpm0 = get_param('lane_rule/waypoint_follower::LaneArray0', 'PortHandles');
add_block('simulink/Signal Routing/Bus Assignment', 'lane_rule/BusA0');
set_param('lane_rule/BusA0', 'Position', [250, 70, 295, 120]);
portA0 = get_param('lane_rule/BusA0', 'PortHandles');
add_block('robotlib/Publish','lane_rule/green_waypoints_array');
set_param('lane_rule/green_waypoints_array', 'topicSource', 'Specify your own');
set_param('lane_rule/green_waypoints_array', 'topic', '/green_waypoints_array');
set_param('lane_rule/green_waypoints_array', 'messageType', 'waypoint_follower/LaneArray');
set_param('lane_rule/green_waypoints_array', 'Position', [345, 65, 475, 135]);
portp0 = get_param('lane_rule/green_waypoints_array', 'PortHandles');
add_line('lane_rule', portpm0.Outport, portA0.Inport(1));
add_line('lane_rule', portA0.Outport, portp0.Inport);
add_block('robotlib/Blank Message', 'lane_rule/waypoint_follower::LaneArray1');
set_param('lane_rule/waypoint_follower::LaneArray1', 'messageType', 'waypoint_follower/LaneArray');
set_param('lane_rule/waypoint_follower::LaneArray1', 'Position', [70, 200, 200, 270]);
portpm1 = get_param('lane_rule/waypoint_follower::LaneArray1', 'PortHandles');
add_block('simulink/Signal Routing/Bus Assignment', 'lane_rule/BusA1');
set_param('lane_rule/BusA1', 'Position', [250, 220, 295, 270]);
portA1 = get_param('lane_rule/BusA1', 'PortHandles');
add_block('robotlib/Publish','lane_rule/traffic_waypoints_array');
set_param('lane_rule/traffic_waypoints_array', 'topicSource', 'Specify your own');
set_param('lane_rule/traffic_waypoints_array', 'topic', '/traffic_waypoints_array');
set_param('lane_rule/traffic_waypoints_array', 'messageType', 'waypoint_follower/LaneArray');
set_param('lane_rule/traffic_waypoints_array', 'Position', [345, 215, 475, 285]);
portp1 = get_param('lane_rule/traffic_waypoints_array', 'PortHandles');
add_line('lane_rule', portpm1.Outport, portA1.Inport(1));
add_line('lane_rule', portA1.Outport, portp1.Inport);
add_block('robotlib/Blank Message', 'lane_rule/waypoint_follower::LaneArray2');
set_param('lane_rule/waypoint_follower::LaneArray2', 'messageType', 'waypoint_follower/LaneArray');
set_param('lane_rule/waypoint_follower::LaneArray2', 'Position', [70, 350, 200, 420]);
portpm2 = get_param('lane_rule/waypoint_follower::LaneArray2', 'PortHandles');
add_block('simulink/Signal Routing/Bus Assignment', 'lane_rule/BusA2');
set_param('lane_rule/BusA2', 'Position', [250, 370, 295, 420]);
portA2 = get_param('lane_rule/BusA2', 'PortHandles');
add_block('robotlib/Publish','lane_rule/red_waypoints_array');
set_param('lane_rule/red_waypoints_array', 'topicSource', 'Specify your own');
set_param('lane_rule/red_waypoints_array', 'topic', '/red_waypoints_array');
set_param('lane_rule/red_waypoints_array', 'messageType', 'waypoint_follower/LaneArray');
set_param('lane_rule/red_waypoints_array', 'Position', [345, 365, 475, 435]);
portp2 = get_param('lane_rule/red_waypoints_array', 'PortHandles');
add_line('lane_rule', portpm2.Outport, portA2.Inport(1));
add_line('lane_rule', portA2.Outport, portp2.Inport);
add_block('robotlib/Subscribe', 'lane_rule/vector_map_info::lane');
set_param('lane_rule/vector_map_info::lane', 'topicSource', 'Specify your own');
set_param('lane_rule/vector_map_info::lane', 'topic', '/vector_map_info/lane');
set_param('lane_rule/vector_map_info::lane', 'messageType', 'vector_map_msgs/LaneArray');
set_param('lane_rule/vector_map_info::lane', 'Position', [70, 500, 200, 570]);
ports3 = get_param('lane_rule/vector_map_info::lane', 'PortHandles');
add_block('simulink/Sinks/Terminator', 'lane_rule/Term3');
set_param('lane_rule/Term3', 'Position', [275, 510, 295, 530]);
portT3 = get_param('lane_rule/Term3', 'PortHandles');
add_block('simulink/Signal Routing/Bus Selector', 'lane_rule/BusS3');
set_param('lane_rule/BusS3', 'Position', [250, 535, 295, 570]);
portS3 = get_param('lane_rule/BusS3', 'PortHandles');
add_line('lane_rule', ports3.Outport(1), portT3.Inport);
add_line('lane_rule', ports3.Outport(2), portS3.Inport);
add_block('robotlib/Subscribe', 'lane_rule/vector_map_info::point');
set_param('lane_rule/vector_map_info::point', 'topicSource', 'Specify your own');
set_param('lane_rule/vector_map_info::point', 'topic', '/vector_map_info/point');
set_param('lane_rule/vector_map_info::point', 'messageType', 'vector_map_msgs/PointArray');
set_param('lane_rule/vector_map_info::point', 'Position', [70, 650, 200, 720]);
ports4 = get_param('lane_rule/vector_map_info::point', 'PortHandles');
add_block('simulink/Sinks/Terminator', 'lane_rule/Term4');
set_param('lane_rule/Term4', 'Position', [275, 660, 295, 680]);
portT4 = get_param('lane_rule/Term4', 'PortHandles');
add_block('simulink/Signal Routing/Bus Selector', 'lane_rule/BusS4');
set_param('lane_rule/BusS4', 'Position', [250, 685, 295, 720]);
portS4 = get_param('lane_rule/BusS4', 'PortHandles');
add_line('lane_rule', ports4.Outport(1), portT4.Inport);
add_line('lane_rule', ports4.Outport(2), portS4.Inport);
add_block('robotlib/Subscribe', 'lane_rule/config::lane_rule');
set_param('lane_rule/config::lane_rule', 'topicSource', 'Specify your own');
set_param('lane_rule/config::lane_rule', 'topic', '/config/lane_rule');
set_param('lane_rule/config::lane_rule', 'messageType', 'runtime_manager/ConfigLaneRule');
set_param('lane_rule/config::lane_rule', 'Position', [70, 800, 200, 870]);
ports5 = get_param('lane_rule/config::lane_rule', 'PortHandles');
add_block('simulink/Sinks/Terminator', 'lane_rule/Term5');
set_param('lane_rule/Term5', 'Position', [275, 810, 295, 830]);
portT5 = get_param('lane_rule/Term5', 'PortHandles');
add_block('simulink/Signal Routing/Bus Selector', 'lane_rule/BusS5');
set_param('lane_rule/BusS5', 'Position', [250, 835, 295, 870]);
portS5 = get_param('lane_rule/BusS5', 'PortHandles');
add_line('lane_rule', ports5.Outport(1), portT5.Inport);
add_line('lane_rule', ports5.Outport(2), portS5.Inport);
add_block('robotlib/Subscribe', 'lane_rule/vector_map_info::stop_line');
set_param('lane_rule/vector_map_info::stop_line', 'topicSource', 'Specify your own');
set_param('lane_rule/vector_map_info::stop_line', 'topic', '/vector_map_info/stop_line');
set_param('lane_rule/vector_map_info::stop_line', 'messageType', 'vector_map_msgs/StopLineArray');
set_param('lane_rule/vector_map_info::stop_line', 'Position', [70, 950, 200, 1020]);
ports6 = get_param('lane_rule/vector_map_info::stop_line', 'PortHandles');
add_block('simulink/Sinks/Terminator', 'lane_rule/Term6');
set_param('lane_rule/Term6', 'Position', [275, 960, 295, 980]);
portT6 = get_param('lane_rule/Term6', 'PortHandles');
add_block('simulink/Signal Routing/Bus Selector', 'lane_rule/BusS6');
set_param('lane_rule/BusS6', 'Position', [250, 985, 295, 1020]);
portS6 = get_param('lane_rule/BusS6', 'PortHandles');
add_line('lane_rule', ports6.Outport(1), portT6.Inport);
add_line('lane_rule', ports6.Outport(2), portS6.Inport);
add_block('robotlib/Subscribe', 'lane_rule/lane_waypoints_array');
set_param('lane_rule/lane_waypoints_array', 'topicSource', 'Specify your own');
set_param('lane_rule/lane_waypoints_array', 'topic', '/lane_waypoints_array');
set_param('lane_rule/lane_waypoints_array', 'messageType', 'waypoint_follower/LaneArray');
set_param('lane_rule/lane_waypoints_array', 'Position', [70, 1100, 200, 1170]);
ports7 = get_param('lane_rule/lane_waypoints_array', 'PortHandles');
add_block('simulink/Sinks/Terminator', 'lane_rule/Term7');
set_param('lane_rule/Term7', 'Position', [275, 1110, 295, 1130]);
portT7 = get_param('lane_rule/Term7', 'PortHandles');
add_block('simulink/Signal Routing/Bus Selector', 'lane_rule/BusS7');
set_param('lane_rule/BusS7', 'Position', [250, 1135, 295, 1170]);
portS7 = get_param('lane_rule/BusS7', 'PortHandles');
add_line('lane_rule', ports7.Outport(1), portT7.Inport);
add_line('lane_rule', ports7.Outport(2), portS7.Inport);
add_block('robotlib/Subscribe', 'lane_rule/vector_map_info::node');
set_param('lane_rule/vector_map_info::node', 'topicSource', 'Specify your own');
set_param('lane_rule/vector_map_info::node', 'topic', '/vector_map_info/node');
set_param('lane_rule/vector_map_info::node', 'messageType', 'vector_map_msgs/NodeArray');
set_param('lane_rule/vector_map_info::node', 'Position', [70, 1250, 200, 1320]);
ports8 = get_param('lane_rule/vector_map_info::node', 'PortHandles');
add_block('simulink/Sinks/Terminator', 'lane_rule/Term8');
set_param('lane_rule/Term8', 'Position', [275, 1260, 295, 1280]);
portT8 = get_param('lane_rule/Term8', 'PortHandles');
add_block('simulink/Signal Routing/Bus Selector', 'lane_rule/BusS8');
set_param('lane_rule/BusS8', 'Position', [250, 1285, 295, 1320]);
portS8 = get_param('lane_rule/BusS8', 'PortHandles');
add_line('lane_rule', ports8.Outport(1), portT8.Inport);
add_line('lane_rule', ports8.Outport(2), portS8.Inport);
add_block('robotlib/Subscribe', 'lane_rule/vector_map_info::dtlane');
set_param('lane_rule/vector_map_info::dtlane', 'topicSource', 'Specify your own');
set_param('lane_rule/vector_map_info::dtlane', 'topic', '/vector_map_info/dtlane');
set_param('lane_rule/vector_map_info::dtlane', 'messageType', 'vector_map_msgs/DTLaneArray');
set_param('lane_rule/vector_map_info::dtlane', 'Position', [70, 1400, 200, 1470]);
ports9 = get_param('lane_rule/vector_map_info::dtlane', 'PortHandles');
add_block('simulink/Sinks/Terminator', 'lane_rule/Term9');
set_param('lane_rule/Term9', 'Position', [275, 1410, 295, 1430]);
portT9 = get_param('lane_rule/Term9', 'PortHandles');
add_block('simulink/Signal Routing/Bus Selector', 'lane_rule/BusS9');
set_param('lane_rule/BusS9', 'Position', [250, 1435, 295, 1470]);
portS9 = get_param('lane_rule/BusS9', 'PortHandles');
add_line('lane_rule', ports9.Outport(1), portT9.Inport);
add_line('lane_rule', ports9.Outport(2), portS9.Inport);
save_system('lane_rule');
