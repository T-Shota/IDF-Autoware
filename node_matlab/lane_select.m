%% defining node
node = robotics.ros.Node('lane_select_mat');

%% variale
global g_pub
global g_lane_number
g_lane_number = 0;
global g_lane_array
g_lane_array = rosmessage('waypoint_follower/LaneArray');

%% defining pub/sub
config_sub = robotics.ros.Subscriber(node,'/config/lane_select','runtime_manager/ConfigLaneSelect',@configCallback_mat);
sub = robotics.ros.Subscriber(node,'/traffic_waypoints_array','waypoint_follower/LaneArray',@laneArrayCallback_mat);
g_pub = robotics.ros.Publisher(node, '/base_waypoints','waypoint_follower/lane');

%% loop
%rate = robotics.Rate(5);
%while rate.TotalElapsedTime < inf
%waitfor(rate);
%end
%% defining Callback function
function configCallback_mat(~,config)
    global g_lane_number
    global g_lane_array
    global g_pub
    g_lane_number = config.Number;

    if numel(g_lane_array.Lanes) > g_lane_number
        send(g_pub,g_lane_array.Lanes(g_lane_number+1,1))
    end
end
function laneArrayCallback_mat(~,msg)
    global g_lane_number
    global g_lane_array
    global g_pub
    g_lane_array = msg;

    if numel(g_lane_array.Lanes) > g_lane_number
        send(g_pub,g_lane_array.Lanes(g_lane_number+1,1))
    end
end