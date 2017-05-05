package runtime_manager;

public interface ConfigTwistFilter extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigTwistFilter";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 lateral_accel_limit\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getLateralAccelLimit();
  void setLateralAccelLimit(float value);
}
