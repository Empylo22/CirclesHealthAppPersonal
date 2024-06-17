import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/subscription_checkout_screen/models/subscription_checkout_model.dart';

/// A controller class for the SubscriptionCheckoutScreen.
///
/// This class manages the state of the SubscriptionCheckoutScreen, including the
/// current subscriptionCheckoutModelObj
class SubscriptionCheckoutController extends GetxController {
  Rx<SubscriptionCheckoutModel> subscriptionCheckoutModelObj =
      SubscriptionCheckoutModel().obs;
}
