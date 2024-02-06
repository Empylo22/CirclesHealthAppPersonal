import '../controller/choose_plan_popup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ChoosePlanPopupScreen.
///
/// This class ensures that the ChoosePlanPopupController is created when the
/// ChoosePlanPopupScreen is first loaded.
class ChoosePlanPopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChoosePlanPopupController());
  }
}
