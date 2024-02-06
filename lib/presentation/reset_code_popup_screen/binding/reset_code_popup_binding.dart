import '../controller/reset_code_popup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ResetCodePopupScreen.
///
/// This class ensures that the ResetCodePopupController is created when the
/// ResetCodePopupScreen is first loaded.
class ResetCodePopupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetCodePopupController());
  }
}
