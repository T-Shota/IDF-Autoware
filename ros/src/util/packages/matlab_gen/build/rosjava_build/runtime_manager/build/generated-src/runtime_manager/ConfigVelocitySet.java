package runtime_manager;

public interface ConfigVelocitySet extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigVelocitySet";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 others_distance\nfloat32 detection_range\nint32 threshold_points\nfloat32 detection_height_top\nfloat32 detection_height_bottom\nfloat32 deceleration\nfloat32 velocity_change_limit\nfloat32 deceleration_range\nfloat32 temporal_waypoints_size\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getOthersDistance();
  void setOthersDistance(float value);
  float getDetectionRange();
  void setDetectionRange(float value);
  int getThresholdPoints();
  void setThresholdPoints(int value);
  float getDetectionHeightTop();
  void setDetectionHeightTop(float value);
  float getDetectionHeightBottom();
  void setDetectionHeightBottom(float value);
  float getDeceleration();
  void setDeceleration(float value);
  float getVelocityChangeLimit();
  void setVelocityChangeLimit(float value);
  float getDecelerationRange();
  void setDecelerationRange(float value);
  float getTemporalWaypointsSize();
  void setTemporalWaypointsSize(float value);
}
