package runtime_manager;

public interface ConfigRcnn extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigRcnn";
  static final java.lang.String _DEFINITION = "Header  header\nfloat32 score_threshold #minimum score required to keep the detection [0.0, 1.0] (default 0.6)\nfloat32 group_threshold #minimum overlap percentage area required to supress detections(NMS threshold) [0.0, 1.0] (default 0.3)\nfloat32 slices_overlap  #overlap percentage between image slices [0.0, 1.0] (default 0.7)\nfloat32 b_mean\nfloat32 g_mean\nfloat32 r_mean\nuint8   image_slices    #number of times to slice the image and search (1, 100], larger value might improve detection but reduce performance (default 16)\nuint8   use_gpu\nuint8   gpu_device_id";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getScoreThreshold();
  void setScoreThreshold(float value);
  float getGroupThreshold();
  void setGroupThreshold(float value);
  float getSlicesOverlap();
  void setSlicesOverlap(float value);
  float getBMean();
  void setBMean(float value);
  float getGMean();
  void setGMean(float value);
  float getRMean();
  void setRMean(float value);
  byte getImageSlices();
  void setImageSlices(byte value);
  byte getUseGpu();
  void setUseGpu(byte value);
  byte getGpuDeviceId();
  void setGpuDeviceId(byte value);
}
