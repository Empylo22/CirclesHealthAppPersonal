import '../controller/sign_up_user_selection_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpUserSelectionScreen.
///
/// This class ensures that the SignUpUserSelectionController is created when the
/// SignUpUserSelectionScreen is first loaded.
class SignUpUserSelectionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpUserSelectionController());
  }
}
