package runtime_manager;

public interface ConfigRandomFilter extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigRandomFilter";
  static final java.lang.String _DEFINITION = "int32 sample_num\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  int getSampleNum();
  void setSampleNum(int value);
}
