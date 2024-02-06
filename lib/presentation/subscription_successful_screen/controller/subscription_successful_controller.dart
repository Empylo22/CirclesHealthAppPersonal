import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/subscription_successful_screen/models/subscription_successful_model.dart';

/// A controller class for the SubscriptionSuccessfulScreen.
///
/// This class manages the state of the SubscriptionSuccessfulScreen, including the
/// current subscriptionSuccessfulModelObj
class SubscriptionSuccessfulController extends GetxController {
  Rx<SubscriptionSuccessfulModel> subscriptionSuccessfulModelObj =
      SubscriptionSuccessfulModel().obs;
}
