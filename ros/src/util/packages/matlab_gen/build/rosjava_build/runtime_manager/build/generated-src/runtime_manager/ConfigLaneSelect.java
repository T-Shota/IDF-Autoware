package runtime_manager;

public interface ConfigLaneSelect extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigLaneSelect";
  static final java.lang.String _DEFINITION = "Header header\nint32 number";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getNumber();
  void setNumber(int value);
}
