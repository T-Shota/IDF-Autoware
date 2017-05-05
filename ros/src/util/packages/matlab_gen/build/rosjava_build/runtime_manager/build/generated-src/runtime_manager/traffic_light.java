package runtime_manager;

public interface traffic_light extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/traffic_light";
  static final java.lang.String _DEFINITION = "Header header\nint32 traffic_light\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getTrafficLight();
  void setTrafficLight(int value);
}
