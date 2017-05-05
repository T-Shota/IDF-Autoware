package runtime_manager;

public interface adjust_xy extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/adjust_xy";
  static final java.lang.String _DEFINITION = "Header header\nint32 x\nint32 y\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getX();
  void setX(int value);
  int getY();
  void setY(int value);
}
