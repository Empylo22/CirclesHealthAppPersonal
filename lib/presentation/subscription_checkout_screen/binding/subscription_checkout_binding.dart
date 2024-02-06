import '../controller/subscription_checkout_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SubscriptionCheckoutScreen.
///
/// This class ensures that the SubscriptionCheckoutController is created when the
/// SubscriptionCheckoutScreen is first loaded.
class SubscriptionCheckoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionCheckoutController());
  }
}
