package runtime_manager;

public interface ConfigLaneRule extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigLaneRule";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 acceleration\nint32 number_of_zeros_ahead\nint32 number_of_zeros_behind\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getAcceleration();
  void setAcceleration(float value);
  int getNumberOfZerosAhead();
  void setNumberOfZerosAhead(int value);
  int getNumberOfZerosBehind();
  void setNumberOfZerosBehind(int value);
}
