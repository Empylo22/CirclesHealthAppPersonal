import '../controller/profile_setup_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileSetupScreen.
///
/// This class ensures that the ProfileSetupController is created when the
/// ProfileSetupScreen is first loaded.
class ProfileSetupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSetupController());
  }
}
