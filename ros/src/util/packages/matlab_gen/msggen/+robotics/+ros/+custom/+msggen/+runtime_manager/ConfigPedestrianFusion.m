classdef ConfigPedestrianFusion < robotics.ros.Message
    %ConfigPedestrianFusion MATLAB implementation of runtime_manager/ConfigPedestrianFusion
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'runtime_manager/ConfigPedestrianFusion' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '959429b5ed2bcbb4ff76d523d3a8cebd' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        MinLowHeight
        MaxLowHeight
        MaxHeight
        MinPoints
        Dispersion
    end
    
    properties (Access = protected)
        Cache = struct('Header', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Dispersion', 'Header', 'MaxHeight', 'MaxLowHeight', 'MinLowHeight', 'MinPoints'} % List of non-constant message properties
        ROSPropertyList = {'dispersion', 'header', 'max_height', 'max_low_height', 'min_low_height', 'min_points'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = ConfigPedestrianFusion(msg)
            %ConfigPedestrianFusion Construct the message object ConfigPedestrianFusion
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
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'ConfigPedestrianFusion', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function minlowheight = get.MinLowHeight(obj)
            %get.MinLowHeight Get the value for property MinLowHeight
            minlowheight = single(obj.JavaMessage.getMinLowHeight);
        end
        
        function set.MinLowHeight(obj, minlowheight)
            %set.MinLowHeight Set the value for property MinLowHeight
            validateattributes(minlowheight, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianFusion', 'MinLowHeight');
            
            obj.JavaMessage.setMinLowHeight(minlowheight);
        end
        
        function maxlowheight = get.MaxLowHeight(obj)
            %get.MaxLowHeight Get the value for property MaxLowHeight
            maxlowheight = single(obj.JavaMessage.getMaxLowHeight);
        end
        
        function set.MaxLowHeight(obj, maxlowheight)
            %set.MaxLowHeight Set the value for property MaxLowHeight
            validateattributes(maxlowheight, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianFusion', 'MaxLowHeight');
            
            obj.JavaMessage.setMaxLowHeight(maxlowheight);
        end
        
        function maxheight = get.MaxHeight(obj)
            %get.MaxHeight Get the value for property MaxHeight
            maxheight = single(obj.JavaMessage.getMaxHeight);
        end
        
        function set.MaxHeight(obj, maxheight)
            %set.MaxHeight Set the value for property MaxHeight
            validateattributes(maxheight, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianFusion', 'MaxHeight');
            
            obj.JavaMessage.setMaxHeight(maxheight);
        end
        
        function minpoints = get.MinPoints(obj)
            %get.MinPoints Get the value for property MinPoints
            minpoints = int32(obj.JavaMessage.getMinPoints);
        end
        
        function set.MinPoints(obj, minpoints)
            %set.MinPoints Set the value for property MinPoints
            validateattributes(minpoints, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianFusion', 'MinPoints');
            
            obj.JavaMessage.setMinPoints(minpoints);
        end
        
        function dispersion = get.Dispersion(obj)
            %get.Dispersion Get the value for property Dispersion
            dispersion = single(obj.JavaMessage.getDispersion);
        end
        
        function set.Dispersion(obj, dispersion)
            %set.Dispersion Set the value for property Dispersion
            validateattributes(dispersion, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigPedestrianFusion', 'Dispersion');
            
            obj.JavaMessage.setDispersion(dispersion);
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
            cpObj.MinLowHeight = obj.MinLowHeight;
            cpObj.MaxLowHeight = obj.MaxLowHeight;
            cpObj.MaxHeight = obj.MaxHeight;
            cpObj.MinPoints = obj.MinPoints;
            cpObj.Dispersion = obj.Dispersion;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.MinLowHeight = strObj.MinLowHeight;
            obj.MaxLowHeight = strObj.MaxLowHeight;
            obj.MaxHeight = strObj.MaxHeight;
            obj.MinPoints = strObj.MinPoints;
            obj.Dispersion = strObj.Dispersion;
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
            
            strObj.MinLowHeight = obj.MinLowHeight;
            strObj.MaxLowHeight = obj.MaxLowHeight;
            strObj.MaxHeight = obj.MaxHeight;
            strObj.MinPoints = obj.MinPoints;
            strObj.Dispersion = obj.Dispersion;
            strObj.Header = saveobj(obj.Header);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.runtime_manager.ConfigPedestrianFusion.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.runtime_manager.ConfigPedestrianFusion;
            obj.reload(strObj);
        end
    end
end
