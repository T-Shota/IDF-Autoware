package runtime_manager;

public interface ConfigNdtMappingOutput extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigNdtMappingOutput";
  static final java.lang.String _DEFINITION = "Header header\nstring filename\nfloat32 filter_res\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  java.lang.String getFilename();
  void setFilename(java.lang.String value);
  float getFilterRes();
  void setFilterRes(float value);
}
