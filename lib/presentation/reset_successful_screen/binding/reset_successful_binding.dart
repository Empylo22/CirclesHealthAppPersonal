import '../controller/reset_successful_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ResetSuccessfulScreen.
///
/// This class ensures that the ResetSuccessfulController is created when the
/// ResetSuccessfulScreen is first loaded.
class ResetSuccessfulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetSuccessfulController());
  }
}
