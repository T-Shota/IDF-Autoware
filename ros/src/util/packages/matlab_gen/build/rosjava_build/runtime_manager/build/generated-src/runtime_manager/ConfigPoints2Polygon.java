package runtime_manager;

public interface ConfigPoints2Polygon extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigPoints2Polygon";
  static final java.lang.String _DEFINITION = "Header header\nint32 k_search\nfloat32 search_radius\nfloat32 mu\nint32 maximum_nearest_neighbors\nfloat32 maximum_surface_angle\nfloat32 minimum_angle\nfloat32 maximum_angle\nbool normal_consistency\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getKSearch();
  void setKSearch(int value);
  float getSearchRadius();
  void setSearchRadius(float value);
  float getMu();
  void setMu(float value);
  int getMaximumNearestNeighbors();
  void setMaximumNearestNeighbors(int value);
  float getMaximumSurfaceAngle();
  void setMaximumSurfaceAngle(float value);
  float getMinimumAngle();
  void setMinimumAngle(float value);
  float getMaximumAngle();
  void setMaximumAngle(float value);
  boolean getNormalConsistency();
  void setNormalConsistency(boolean value);
}
