package runtime_manager;

public interface ConfigLaneStop extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigLaneStop";
  static final java.lang.String _DEFINITION = "Header header\nbool manual_detection\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  boolean getManualDetection();
  void setManualDetection(boolean value);
}
