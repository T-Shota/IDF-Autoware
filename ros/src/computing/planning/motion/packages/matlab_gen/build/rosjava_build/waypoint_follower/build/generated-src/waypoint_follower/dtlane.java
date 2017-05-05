package waypoint_follower;

public interface dtlane extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "waypoint_follower/dtlane";
  static final java.lang.String _DEFINITION = "float64 dist\nfloat64 dir\nfloat64 apara\nfloat64 r\nfloat64 slope\nfloat64 cant\nfloat64 lw\nfloat64 rw\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  double getDist();
  void setDist(double value);
  double getDir();
  void setDir(double value);
  double getApara();
  void setApara(double value);
  double getR();
  void setR(double value);
  double getSlope();
  void setSlope(double value);
  double getCant();
  void setCant(double value);
  double getLw();
  void setLw(double value);
  double getRw();
  void setRw(double value);
}
