import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist4_item_widget] screen.
class Userprofilelist4ItemModel {
  Userprofilelist4ItemModel({
    this.adminImage,
    this.userName,
    this.score,
    this.adminName,
    this.id,
  }) {
    adminImage = adminImage ?? Rx(ImageConstant.imgEllipse43);
    userName = userName ?? Rx("Ade");
    score = score ?? Rx("Score: 30");
    adminName = adminName ?? Rx("ADMIN");
    id = id ?? Rx("");
  }

  Rx<String>? adminImage;

  Rx<String>? userName;

  Rx<String>? score;

  Rx<String>? adminName;

  Rx<String>? id;
}
