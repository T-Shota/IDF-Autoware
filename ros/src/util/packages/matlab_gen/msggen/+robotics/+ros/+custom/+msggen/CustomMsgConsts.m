classdef CustomMsgConsts
    %CustomMsgConsts This class stores all message types
    %   The message types are constant properties, which in turn resolve
    %   to the strings of the actual types.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    properties (Constant)
        runtime_manager_ConfigCarDpm = 'runtime_manager/ConfigCarDpm'
        runtime_manager_ConfigCarFusion = 'runtime_manager/ConfigCarFusion'
        runtime_manager_ConfigCarKf = 'runtime_manager/ConfigCarKf'
        runtime_manager_ConfigDistanceFilter = 'runtime_manager/ConfigDistanceFilter'
        runtime_manager_ConfigICP = 'runtime_manager/ConfigICP'
        runtime_manager_ConfigLaneRule = 'runtime_manager/ConfigLaneRule'
        runtime_manager_ConfigLaneSelect = 'runtime_manager/ConfigLaneSelect'
        runtime_manager_ConfigLaneStop = 'runtime_manager/ConfigLaneStop'
        runtime_manager_ConfigLatticeVelocitySet = 'runtime_manager/ConfigLatticeVelocitySet'
        runtime_manager_ConfigNdt = 'runtime_manager/ConfigNdt'
        runtime_manager_ConfigNdtMapping = 'runtime_manager/ConfigNdtMapping'
        runtime_manager_ConfigNdtMappingOutput = 'runtime_manager/ConfigNdtMappingOutput'
        runtime_manager_ConfigPedestrianDpm = 'runtime_manager/ConfigPedestrianDpm'
        runtime_manager_ConfigPedestrianFusion = 'runtime_manager/ConfigPedestrianFusion'
        runtime_manager_ConfigPedestrianKf = 'runtime_manager/ConfigPedestrianKf'
        runtime_manager_ConfigPoints2Polygon = 'runtime_manager/ConfigPoints2Polygon'
        runtime_manager_ConfigRandomFilter = 'runtime_manager/ConfigRandomFilter'
        runtime_manager_ConfigRcnn = 'runtime_manager/ConfigRcnn'
        runtime_manager_ConfigRingFilter = 'runtime_manager/ConfigRingFilter'
        runtime_manager_ConfigTwistFilter = 'runtime_manager/ConfigTwistFilter'
        runtime_manager_ConfigVelocitySet = 'runtime_manager/ConfigVelocitySet'
        runtime_manager_ConfigVoxelGridFilter = 'runtime_manager/ConfigVoxelGridFilter'
        runtime_manager_ConfigWaypointFollower = 'runtime_manager/ConfigWaypointFollower'
        runtime_manager_accel_cmd = 'runtime_manager/accel_cmd'
        runtime_manager_adjust_xy = 'runtime_manager/adjust_xy'
        runtime_manager_brake_cmd = 'runtime_manager/brake_cmd'
        runtime_manager_indicator_cmd = 'runtime_manager/indicator_cmd'
        runtime_manager_lamp_cmd = 'runtime_manager/lamp_cmd'
        runtime_manager_steer_cmd = 'runtime_manager/steer_cmd'
        runtime_manager_traffic_light = 'runtime_manager/traffic_light'
    end
    
    methods (Static, Hidden)
        function messageList = getMessageList
            %getMessageList Generate a cell array with all message types.
            %   The list will be sorted alphabetically.
            
            persistent msgList
            if isempty(msgList)
                msgList = cell(30, 1);
                msgList{1} = 'runtime_manager/ConfigCarDpm';
                msgList{2} = 'runtime_manager/ConfigCarFusion';
                msgList{3} = 'runtime_manager/ConfigCarKf';
                msgList{4} = 'runtime_manager/ConfigDistanceFilter';
                msgList{5} = 'runtime_manager/ConfigICP';
                msgList{6} = 'runtime_manager/ConfigLaneRule';
                msgList{7} = 'runtime_manager/ConfigLaneSelect';
                msgList{8} = 'runtime_manager/ConfigLaneStop';
                msgList{9} = 'runtime_manager/ConfigLatticeVelocitySet';
                msgList{10} = 'runtime_manager/ConfigNdt';
                msgList{11} = 'runtime_manager/ConfigNdtMapping';
                msgList{12} = 'runtime_manager/ConfigNdtMappingOutput';
                msgList{13} = 'runtime_manager/ConfigPedestrianDpm';
                msgList{14} = 'runtime_manager/ConfigPedestrianFusion';
                msgList{15} = 'runtime_manager/ConfigPedestrianKf';
                msgList{16} = 'runtime_manager/ConfigPoints2Polygon';
                msgList{17} = 'runtime_manager/ConfigRandomFilter';
                msgList{18} = 'runtime_manager/ConfigRcnn';
                msgList{19} = 'runtime_manager/ConfigRingFilter';
                msgList{20} = 'runtime_manager/ConfigTwistFilter';
                msgList{21} = 'runtime_manager/ConfigVelocitySet';
                msgList{22} = 'runtime_manager/ConfigVoxelGridFilter';
                msgList{23} = 'runtime_manager/ConfigWaypointFollower';
                msgList{24} = 'runtime_manager/accel_cmd';
                msgList{25} = 'runtime_manager/adjust_xy';
                msgList{26} = 'runtime_manager/brake_cmd';
                msgList{27} = 'runtime_manager/indicator_cmd';
                msgList{28} = 'runtime_manager/lamp_cmd';
                msgList{29} = 'runtime_manager/steer_cmd';
                msgList{30} = 'runtime_manager/traffic_light';
            end
            
            messageList = msgList;
        end
        
        function serviceList = getServiceList
            %getServiceList Generate a cell array with all service types.
            %   The list will be sorted alphabetically.
            
            persistent svcList
            if isempty(svcList)
                svcList = cell(0, 1);
            end
            
            % The message list was already sorted, so don't need to sort
            % again.
            serviceList = svcList;
        end
        
        function actionList = getActionList
            %getActionList Generate a cell array with all action types.
            %   The list will be sorted alphabetically.
            
            persistent actList
            if isempty(actList)
                actList = cell(0, 1);
            end
            
            % The message list was already sorted, so don't need to sort
            % again.
            actionList = actList;
        end
    end
end
