package runtime_manager;

public interface indicator_cmd extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/indicator_cmd";
  static final java.lang.String _DEFINITION = "Header header\nint32 l\nint32 r\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getL();
  void setL(int value);
  int getR();
  void setR(int value);
}
