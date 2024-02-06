import '../controller/subscription_successful_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SubscriptionSuccessfulScreen.
///
/// This class ensures that the SubscriptionSuccessfulController is created when the
/// SubscriptionSuccessfulScreen is first loaded.
class SubscriptionSuccessfulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscriptionSuccessfulController());
  }
}
