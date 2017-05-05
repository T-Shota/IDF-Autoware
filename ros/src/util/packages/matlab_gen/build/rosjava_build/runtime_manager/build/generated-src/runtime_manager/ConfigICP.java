package runtime_manager;

public interface ConfigICP extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigICP";
  static final java.lang.String _DEFINITION = "Header header\nint32 init_pos_gnss\nfloat32 x\nfloat32 y\nfloat32 z\nfloat32 roll\nfloat32 pitch\nfloat32 yaw\nint32 use_predict_pose\nfloat32 error_threshold\nint32 maximum_iterations\nfloat32 transformation_epsilon\nfloat32 max_correspondence_distance\nfloat32 euclidean_fitness_epsilon\nfloat32 ransac_outlier_rejection_threshold\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getInitPosGnss();
  void setInitPosGnss(int value);
  float getX();
  void setX(float value);
  float getY();
  void setY(float value);
  float getZ();
  void setZ(float value);
  float getRoll();
  void setRoll(float value);
  float getPitch();
  void setPitch(float value);
  float getYaw();
  void setYaw(float value);
  int getUsePredictPose();
  void setUsePredictPose(int value);
  float getErrorThreshold();
  void setErrorThreshold(float value);
  int getMaximumIterations();
  void setMaximumIterations(int value);
  float getTransformationEpsilon();
  void setTransformationEpsilon(float value);
  float getMaxCorrespondenceDistance();
  void setMaxCorrespondenceDistance(float value);
  float getEuclideanFitnessEpsilon();
  void setEuclideanFitnessEpsilon(float value);
  float getRansacOutlierRejectionThreshold();
  void setRansacOutlierRejectionThreshold(float value);
}
