import '../controller/sign_up_user_selection_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpUserSelectionOneScreen.
///
/// This class ensures that the SignUpUserSelectionOneController is created when the
/// SignUpUserSelectionOneScreen is first loaded.
class SignUpUserSelectionOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpUserSelectionOneController());
  }
}
