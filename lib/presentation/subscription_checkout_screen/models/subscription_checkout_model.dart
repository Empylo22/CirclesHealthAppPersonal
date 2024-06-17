import '../../../core/app_export.dart';
import 'carddetails_item_model.dart';

/// This class defines the variables used in the [subscription_checkout_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SubscriptionCheckoutModel {
  Rx<List<CarddetailsItemModel>> carddetailsItemList = Rx([
    CarddetailsItemModel(
        cardEnding: "Mastercard ending in **8256".obs,
        checkmarkImage: ImageConstant.imgCheckmarkPrimary.obs)
  ]);
}
