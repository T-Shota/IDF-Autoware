package runtime_manager;

public interface ConfigNdt extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigNdt";
  static final java.lang.String _DEFINITION = "Header header\nint32 init_pos_gnss\nfloat32 x\nfloat32 y\nfloat32 z\nfloat32 roll\nfloat32 pitch\nfloat32 yaw\n#int32 lidar_original\n#int32 max\n#int32 min\n#int32 layer\nint32 use_predict_pose\nfloat32 error_threshold\nfloat32 resolution\nfloat32 step_size\nfloat32 trans_esp\n#float32 leaf_size\n#float32 angle_error\n#float32 shift_x\n#float32 shift_y\n#float32 shift_z\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getInitPosGnss();
  void setInitPosGnss(int value);
  float getX();
  void setX(float value);
  float getY();
  void setY(float value);
  float getZ();
  void setZ(float value);
  float getRoll();
  void setRoll(float value);
  float getPitch();
  void setPitch(float value);
  float getYaw();
  void setYaw(float value);
  int getUsePredictPose();
  void setUsePredictPose(int value);
  float getErrorThreshold();
  void setErrorThreshold(float value);
  float getResolution();
  void setResolution(float value);
  float getStepSize();
  void setStepSize(float value);
  float getTransEsp();
  void setTransEsp(float value);
}
