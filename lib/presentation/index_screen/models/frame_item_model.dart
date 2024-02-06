import '../../../core/app_export.dart';

/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {
  Rx<String>? settings = Rx("Not at all");

  Rx<bool>? isSelected = Rx(false);
}
