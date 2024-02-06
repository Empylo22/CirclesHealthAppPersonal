import '../controller/fa_code_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaCodeScreen.
///
/// This class ensures that the FaCodeController is created when the
/// FaCodeScreen is first loaded.
class FaCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaCodeController());
  }
}
