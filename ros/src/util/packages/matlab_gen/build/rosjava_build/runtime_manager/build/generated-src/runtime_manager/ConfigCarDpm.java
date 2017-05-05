package runtime_manager;

public interface ConfigCarDpm extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigCarDpm";
  static final java.lang.String _DEFINITION = "Header header\nfloat32 score_threshold\nfloat32 group_threshold\nint32 Lambda\nint32 num_cells\nint32 num_bins";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  float getScoreThreshold();
  void setScoreThreshold(float value);
  float getGroupThreshold();
  void setGroupThreshold(float value);
  int getLambda();
  void setLambda(int value);
  int getNumCells();
  void setNumCells(int value);
  int getNumBins();
  void setNumBins(int value);
}
