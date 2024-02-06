import '../controller/fa_verified_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaVerifiedScreen.
///
/// This class ensures that the FaVerifiedController is created when the
/// FaVerifiedScreen is first loaded.
class FaVerifiedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaVerifiedController());
  }
}
