classdef CustomMsgConsts
    %CustomMsgConsts This class stores all message types
    %   The message types are constant properties, which in turn resolve
    %   to the strings of the actual types.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    properties (Constant)
        waypoint_follower_LaneArray = 'waypoint_follower/LaneArray'
        waypoint_follower_dtlane = 'waypoint_follower/dtlane'
        waypoint_follower_lane = 'waypoint_follower/lane'
        waypoint_follower_waypoint = 'waypoint_follower/waypoint'
    end
    
    methods (Static, Hidden)
        function messageList = getMessageList
            %getMessageList Generate a cell array with all message types.
            %   The list will be sorted alphabetically.
            
            persistent msgList
            if isempty(msgList)
                msgList = cell(4, 1);
                msgList{1} = 'waypoint_follower/LaneArray';
                msgList{2} = 'waypoint_follower/dtlane';
                msgList{3} = 'waypoint_follower/lane';
                msgList{4} = 'waypoint_follower/waypoint';
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
