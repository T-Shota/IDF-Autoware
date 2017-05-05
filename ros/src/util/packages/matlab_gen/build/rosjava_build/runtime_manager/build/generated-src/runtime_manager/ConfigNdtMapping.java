package runtime_manager;

public interface ConfigNdtMapping extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigNdtMapping";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 resolution\nfloat32 step_size\nfloat32 trans_eps\nfloat32 leaf_size\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getResolution();
  void setResolution(float value);
  float getStepSize();
  void setStepSize(float value);
  float getTransEps();
  void setTransEps(float value);
  float getLeafSize();
  void setLeafSize(float value);
}
