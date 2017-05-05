package waypoint_follower;

public interface waypoint extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "waypoint_follower/waypoint";
  static final java.lang.String _DEFINITION = "geometry_msgs/PoseStamped pose\ngeometry_msgs/TwistStamped twist\ndtlane dtlane\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  geometry_msgs.PoseStamped getPose();
  void setPose(geometry_msgs.PoseStamped value);
  geometry_msgs.TwistStamped getTwist();
  void setTwist(geometry_msgs.TwistStamped value);
  waypoint_follower.dtlane getDtlane();
  void setDtlane(waypoint_follower.dtlane value);
}
