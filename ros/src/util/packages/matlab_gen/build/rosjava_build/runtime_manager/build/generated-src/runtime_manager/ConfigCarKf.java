package runtime_manager;

public interface ConfigCarKf extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigCarKf";
  static final java.lang.String _DEFINITION = "Header header\nint32 initial_lifespan\nint32 default_lifespan\nfloat32 noise_covariance\nfloat32 measurement_noise_covariance\nfloat32 error_estimate_covariance\nfloat32 percentage_of_overlapping\nint32 orb_features\nint32 use_orb";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  int getInitialLifespan();
  void setInitialLifespan(int value);
  int getDefaultLifespan();
  void setDefaultLifespan(int value);
  float getNoiseCovariance();
  void setNoiseCovariance(float value);
  float getMeasurementNoiseCovariance();
  void setMeasurementNoiseCovariance(float value);
  float getErrorEstimateCovariance();
  void setErrorEstimateCovariance(float value);
  float getPercentageOfOverlapping();
  void setPercentageOfOverlapping(float value);
  int getOrbFeatures();
  void setOrbFeatures(int value);
  int getUseOrb();
  void setUseOrb(int value);
}
