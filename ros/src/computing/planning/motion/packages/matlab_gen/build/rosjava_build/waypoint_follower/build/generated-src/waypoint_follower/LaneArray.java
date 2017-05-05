package waypoint_follower;

public interface LaneArray extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "waypoint_follower/LaneArray";
  static final java.lang.String _DEFINITION = "lane[] lanes";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  java.util.List<waypoint_follower.lane> getLanes();
  void setLanes(java.util.List<waypoint_follower.lane> value);
}
