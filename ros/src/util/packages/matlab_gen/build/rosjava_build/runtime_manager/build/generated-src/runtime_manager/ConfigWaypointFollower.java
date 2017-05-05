package runtime_manager;

public interface ConfigWaypointFollower extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigWaypointFollower";
  static final java.lang.String _DEFINITION = "Header header\nint32 param_flag\nfloat32 velocity\nfloat32 lookahead_distance\nfloat32 lookahead_ratio\nfloat32 minimum_lookahead_distance\nfloat32 displacement_threshold\nfloat32 relative_angle_threshold\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getParamFlag();
  void setParamFlag(int value);
  float getVelocity();
  void setVelocity(float value);
  float getLookaheadDistance();
  void setLookaheadDistance(float value);
  float getLookaheadRatio();
  void setLookaheadRatio(float value);
  float getMinimumLookaheadDistance();
  void setMinimumLookaheadDistance(float value);
  float getDisplacementThreshold();
  void setDisplacementThreshold(float value);
  float getRelativeAngleThreshold();
  void setRelativeAngleThreshold(float value);
}
