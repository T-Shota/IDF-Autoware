classdef ConfigRcnn < robotics.ros.Message
    %ConfigRcnn MATLAB implementation of runtime_manager/ConfigRcnn
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'runtime_manager/ConfigRcnn' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'f51f68bdedfbe5da5d10ace3c7a60ff0' % The MD5 Checksum of the message definition
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
        SlicesOverlap
        BMean
        GMean
        RMean
        ImageSlices
        UseGpu
        GpuDeviceId
    end
    
    properties (Access = protected)
        Cache = struct('Header', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'BMean', 'GMean', 'GpuDeviceId', 'GroupThreshold', 'Header', 'ImageSlices', 'RMean', 'ScoreThreshold', 'SlicesOverlap', 'UseGpu'} % List of non-constant message properties
        ROSPropertyList = {'b_mean', 'g_mean', 'gpu_device_id', 'group_threshold', 'header', 'image_slices', 'r_mean', 'score_threshold', 'slices_overlap', 'use_gpu'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = ConfigRcnn(msg)
            %ConfigRcnn Construct the message object ConfigRcnn
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
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'Header');
            
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
            validateattributes(scorethreshold, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'ScoreThreshold');
            
            obj.JavaMessage.setScoreThreshold(scorethreshold);
        end
        
        function groupthreshold = get.GroupThreshold(obj)
            %get.GroupThreshold Get the value for property GroupThreshold
            groupthreshold = single(obj.JavaMessage.getGroupThreshold);
        end
        
        function set.GroupThreshold(obj, groupthreshold)
            %set.GroupThreshold Set the value for property GroupThreshold
            validateattributes(groupthreshold, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'GroupThreshold');
            
            obj.JavaMessage.setGroupThreshold(groupthreshold);
        end
        
        function slicesoverlap = get.SlicesOverlap(obj)
            %get.SlicesOverlap Get the value for property SlicesOverlap
            slicesoverlap = single(obj.JavaMessage.getSlicesOverlap);
        end
        
        function set.SlicesOverlap(obj, slicesoverlap)
            %set.SlicesOverlap Set the value for property SlicesOverlap
            validateattributes(slicesoverlap, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'SlicesOverlap');
            
            obj.JavaMessage.setSlicesOverlap(slicesoverlap);
        end
        
        function bmean = get.BMean(obj)
            %get.BMean Get the value for property BMean
            bmean = single(obj.JavaMessage.getBMean);
        end
        
        function set.BMean(obj, bmean)
            %set.BMean Set the value for property BMean
            validateattributes(bmean, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'BMean');
            
            obj.JavaMessage.setBMean(bmean);
        end
        
        function gmean = get.GMean(obj)
            %get.GMean Get the value for property GMean
            gmean = single(obj.JavaMessage.getGMean);
        end
        
        function set.GMean(obj, gmean)
            %set.GMean Set the value for property GMean
            validateattributes(gmean, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'GMean');
            
            obj.JavaMessage.setGMean(gmean);
        end
        
        function rmean = get.RMean(obj)
            %get.RMean Get the value for property RMean
            rmean = single(obj.JavaMessage.getRMean);
        end
        
        function set.RMean(obj, rmean)
            %set.RMean Set the value for property RMean
            validateattributes(rmean, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'RMean');
            
            obj.JavaMessage.setRMean(rmean);
        end
        
        function imageslices = get.ImageSlices(obj)
            %get.ImageSlices Get the value for property ImageSlices
            imageslices = typecast(int8(obj.JavaMessage.getImageSlices), 'uint8');
        end
        
        function set.ImageSlices(obj, imageslices)
            %set.ImageSlices Set the value for property ImageSlices
            validateattributes(imageslices, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'ImageSlices');
            
            obj.JavaMessage.setImageSlices(imageslices);
        end
        
        function usegpu = get.UseGpu(obj)
            %get.UseGpu Get the value for property UseGpu
            usegpu = typecast(int8(obj.JavaMessage.getUseGpu), 'uint8');
        end
        
        function set.UseGpu(obj, usegpu)
            %set.UseGpu Set the value for property UseGpu
            validateattributes(usegpu, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'UseGpu');
            
            obj.JavaMessage.setUseGpu(usegpu);
        end
        
        function gpudeviceid = get.GpuDeviceId(obj)
            %get.GpuDeviceId Get the value for property GpuDeviceId
            gpudeviceid = typecast(int8(obj.JavaMessage.getGpuDeviceId), 'uint8');
        end
        
        function set.GpuDeviceId(obj, gpudeviceid)
            %set.GpuDeviceId Set the value for property GpuDeviceId
            validateattributes(gpudeviceid, {'numeric'}, {'nonempty', 'scalar'}, 'ConfigRcnn', 'GpuDeviceId');
            
            obj.JavaMessage.setGpuDeviceId(gpudeviceid);
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
            cpObj.SlicesOverlap = obj.SlicesOverlap;
            cpObj.BMean = obj.BMean;
            cpObj.GMean = obj.GMean;
            cpObj.RMean = obj.RMean;
            cpObj.ImageSlices = obj.ImageSlices;
            cpObj.UseGpu = obj.UseGpu;
            cpObj.GpuDeviceId = obj.GpuDeviceId;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.ScoreThreshold = strObj.ScoreThreshold;
            obj.GroupThreshold = strObj.GroupThreshold;
            obj.SlicesOverlap = strObj.SlicesOverlap;
            obj.BMean = strObj.BMean;
            obj.GMean = strObj.GMean;
            obj.RMean = strObj.RMean;
            obj.ImageSlices = strObj.ImageSlices;
            obj.UseGpu = strObj.UseGpu;
            obj.GpuDeviceId = strObj.GpuDeviceId;
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
            strObj.SlicesOverlap = obj.SlicesOverlap;
            strObj.BMean = obj.BMean;
            strObj.GMean = obj.GMean;
            strObj.RMean = obj.RMean;
            strObj.ImageSlices = obj.ImageSlices;
            strObj.UseGpu = obj.UseGpu;
            strObj.GpuDeviceId = obj.GpuDeviceId;
            strObj.Header = saveobj(obj.Header);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.runtime_manager.ConfigRcnn.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.runtime_manager.ConfigRcnn;
            obj.reload(strObj);
        end
    end
end