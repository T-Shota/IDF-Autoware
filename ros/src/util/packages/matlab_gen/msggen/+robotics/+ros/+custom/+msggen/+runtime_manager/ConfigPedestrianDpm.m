classdef ConfigPedestrianDpm < robotics.ros.Message
    %ConfigPedestrianDpm MATLAB implementation of runtime_manager/ConfigPedestrianDpm
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'runtime_manager/ConfigPedestrianDpm' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '4aad5f13bbefe1a8707af2b040e45167' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        ScoreThreshold
        GroupThreshold
        Lambda
        NumCells
        NumBins
    end
    
    properties (Access = protected)
        Cache = struct('Header', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'GroupThreshold', 'Header', 'Lambda', 'NumBins', 'NumCells', 'ScoreThreshold'} % List of non-constant message properties
        ROSPropertyList = {'group_threshold', 'header', 'Lambda', 'num_bins', 'num_cells', 'score_threshold'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = ConfigPedestrianDpm(msg)
            %ConfigPedestrianDpm Construct the message object ConfigPedestrianDpm
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function header = get.Header(obj)
            %get.Header Get the value for property Header
            if isempty(obj.Cache.Header)
                obj.Cache.Header = feval(obj.StdMsgsHeaderClass, obj.JavaMessage.getHeader);
            end
            header = obj.Cache.Header;
        end
        
        function set.Header(obj, header)
            %set.Header Set the value for property Header
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'ConfigPedestrianDpm', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function scorethreshold = get.ScoreThreshold(obj)
            %get.ScoreThreshold Get the value for property ScoreThreshold
            scorethreshold = single(obj.JavaMessage.getScoreThreshold);
        end
        
        function set.ScoreThreshold(obj, scorethreshold)
            %set.ScoreThreshold Set the value for property ScoreThreshold
            validateattributes(scorethreshold, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianDpm', 'ScoreThreshold');
            
            obj.JavaMessage.setScoreThreshold(scorethreshold);
        end
        
        function groupthreshold = get.GroupThreshold(obj)
            %get.GroupThreshold Get the value for property GroupThreshold
            groupthreshold = single(obj.JavaMessage.getGroupThreshold);
        end
        
        function set.GroupThreshold(obj, groupthreshold)
            %set.GroupThreshold Set the value for property GroupThreshold
            validateattributes(groupthreshold, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianDpm', 'GroupThreshold');
            
            obj.JavaMessage.setGroupThreshold(groupthreshold);
        end
        
        function lambda = get.Lambda(obj)
            %get.Lambda Get the value for property Lambda
            lambda = int32(obj.JavaMessage.getLambda);
        end
        
        function set.Lambda(obj, lambda)
            %set.Lambda Set the value for property Lambda
            validateattributes(lambda, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianDpm', 'Lambda');
            
            obj.JavaMessage.setLambda(lambda);
        end
        
        function numcells = get.NumCells(obj)
            %get.NumCells Get the value for property NumCells
            numcells = int32(obj.JavaMessage.getNumCells);
        end
        
        function set.NumCells(obj, numcells)
            %set.NumCells Set the value for property NumCells
            validateattributes(numcells, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianDpm', 'NumCells');
            
            obj.JavaMessage.setNumCells(numcells);
        end
        
        function numbins = get.NumBins(obj)
            %get.NumBins Get the value for property NumBins
            numbins = int32(obj.JavaMessage.getNumBins);
        end
        
        function set.NumBins(obj, numbins)
            %set.NumBins Set the value for property NumBins
            validateattributes(numbins, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianDpm', 'NumBins');
            
            obj.JavaMessage.setNumBins(numbins);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.ScoreThreshold = obj.ScoreThreshold;
            cpObj.GroupThreshold = obj.GroupThreshold;
            cpObj.Lambda = obj.Lambda;
            cpObj.NumCells = obj.NumCells;
            cpObj.NumBins = obj.NumBins;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.ScoreThreshold = strObj.ScoreThreshold;
            obj.GroupThreshold = strObj.GroupThreshold;
            obj.Lambda = strObj.Lambda;
            obj.NumCells = strObj.NumCells;
            obj.NumBins = strObj.NumBins;
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.ScoreThreshold = obj.ScoreThreshold;
            strObj.GroupThreshold = obj.GroupThreshold;
            strObj.Lambda = obj.Lambda;
            strObj.NumCells = obj.NumCells;
            strObj.NumBins = obj.NumBins;
            strObj.Header = saveobj(obj.Header);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.runtime_manager.ConfigPedestrianDpm.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.runtime_manager.ConfigPedestrianDpm;
            obj.reload(strObj);
        end
    end
end