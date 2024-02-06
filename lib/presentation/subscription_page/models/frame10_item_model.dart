import '../../../core/app_export.dart';

/// This class is used in the [frame10_item_widget] screen.
class Frame10ItemModel {
  Frame10ItemModel({
    this.proText,
    this.id,
  }) {
    proText = proText ?? Rx("PRO");
    id = id ?? Rx("");
  }

  Rx<String>? proText;

  Rx<String>? id;
}
