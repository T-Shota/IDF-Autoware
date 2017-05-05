package waypoint_follower;

public interface lane extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "waypoint_follower/lane";
  static final java.lang.String _DEFINITION = "Header header\nint32 increment\nwaypoint[] waypoints";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getIncrement();
  void setIncrement(int value);
  java.util.List<waypoint_follower.waypoint> getWaypoints();
  void setWaypoints(java.util.List<waypoint_follower.waypoint> value);
}
