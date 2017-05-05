package runtime_manager;

public interface ConfigVoxelGridFilter extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "runtime_manager/ConfigVoxelGridFilter";
  static final java.lang.String _DEFINITION = "float32 voxel_leaf_size\n\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  float getVoxelLeafSize();
  void setVoxelLeafSize(float value);
}
