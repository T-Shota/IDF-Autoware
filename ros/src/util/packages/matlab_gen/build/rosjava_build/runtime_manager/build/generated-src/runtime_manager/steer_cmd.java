package runtime_manager;

public interface steer_cmd extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/steer_cmd";
  static final java.lang.String _DEFINITION = "Header header\nint32 steer\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getSteer();
  void setSteer(int value);
}
