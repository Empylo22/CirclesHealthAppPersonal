import '../../../core/app_export.dart';

/// This class is used in the [carddetails_item_widget] screen.
class CarddetailsItemModel {
  CarddetailsItemModel({
    this.cardEnding,
    this.checkmarkImage,
    this.id,
  }) {
    cardEnding = cardEnding ?? Rx("Mastercard ending in **8256");
    checkmarkImage = checkmarkImage ?? Rx(ImageConstant.imgCheckmarkPrimary);
    id = id ?? Rx("");
  }

  Rx<String>? cardEnding;

  Rx<String>? checkmarkImage;

  Rx<String>? id;
}
