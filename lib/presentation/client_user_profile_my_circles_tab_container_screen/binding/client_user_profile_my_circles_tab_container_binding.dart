import '../controller/client_user_profile_my_circles_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ClientUserProfileMyCirclesTabContainerScreen.
///
/// This class ensures that the ClientUserProfileMyCirclesTabContainerController is created when the
/// ClientUserProfileMyCirclesTabContainerScreen is first loaded.
class ClientUserProfileMyCirclesTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClientUserProfileMyCirclesTabContainerController());
  }
}
