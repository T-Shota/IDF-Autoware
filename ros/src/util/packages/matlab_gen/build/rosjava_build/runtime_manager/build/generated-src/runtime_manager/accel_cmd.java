package runtime_manager;

public interface accel_cmd extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/accel_cmd";
  static final java.lang.String _DEFINITION = "Header header\nint32 accel\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getAccel();
  void setAccel(int value);
}
