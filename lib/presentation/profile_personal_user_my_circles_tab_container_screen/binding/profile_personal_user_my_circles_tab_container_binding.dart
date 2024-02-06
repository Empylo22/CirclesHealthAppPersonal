import '../controller/profile_personal_user_my_circles_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfilePersonalUserMyCirclesTabContainerScreen.
///
/// This class ensures that the ProfilePersonalUserMyCirclesTabContainerController is created when the
/// ProfilePersonalUserMyCirclesTabContainerScreen is first loaded.
class ProfilePersonalUserMyCirclesTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfilePersonalUserMyCirclesTabContainerController());
  }
}
