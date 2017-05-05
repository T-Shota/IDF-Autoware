package runtime_manager;

public interface ConfigCarFusion extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigCarFusion";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 min_low_height\nfloat32 max_low_height\nfloat32 max_height\nint32 min_points\nfloat32 dispersion\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getMinLowHeight();
  void setMinLowHeight(float value);
  float getMaxLowHeight();
  void setMaxLowHeight(float value);
  float getMaxHeight();
  void setMaxHeight(float value);
  int getMinPoints();
  void setMinPoints(int value);
  float getDispersion();
  void setDispersion(float value);
}
