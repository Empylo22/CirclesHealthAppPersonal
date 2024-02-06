import '../../../core/app_export.dart';

/// This class is used in the [dailymeditation_item_widget] screen.
class DailymeditationItemModel {
  DailymeditationItemModel({
    this.image1,
    this.text1,
    this.text2,
    this.text3,
    this.id,
  }) {
    image1 = image1 ?? Rx(ImageConstant.imgRectangle123);
    text1 = text1 ?? Rx("10 Mins");
    text2 = text2 ?? Rx("Understanding\nboundaries ");
    text3 = text3 ?? Rx("LEARN");
    id = id ?? Rx("");
  }

  Rx<String>? image1;

  Rx<String>? text1;

  Rx<String>? text2;

  Rx<String>? text3;

  Rx<String>? id;
}
