package runtime_manager;

public interface ConfigRingFilter extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigRingFilter";
  static final java.lang.String _DEFINITION = "int32 ring_div\nfloat32 voxel_leaf_size\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  int getRingDiv();
  void setRingDiv(int value);
  float getVoxelLeafSize();
  void setVoxelLeafSize(float value);
}
