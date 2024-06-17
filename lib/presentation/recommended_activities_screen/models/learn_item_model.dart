import '../../../core/app_export.dart';

/// This class is used in the [learn_item_widget] screen.
class LearnItemModel {
  Rx<String>? learn = Rx("LEARN");

  Rx<bool>? isSelected = Rx(false);
}
