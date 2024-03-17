import '../controller/sign_in_verifiction_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInVerifictionScreen.
///
/// This class ensures that the SignInVerifictionController is created when the
/// SignInVerifictionScreen is first loaded.
class SignInVerifictionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInVerifictionController());
  }
}
