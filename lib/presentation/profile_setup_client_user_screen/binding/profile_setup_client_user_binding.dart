import '../controller/profile_setup_client_user_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileSetupClientUserScreen.
///
/// This class ensures that the ProfileSetupClientUserController is created when the
/// ProfileSetupClientUserScreen is first loaded.
class ProfileSetupClientUserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileSetupClientUserController());
  }
}
