import '../controller/home_personal_user_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomePersonalUserContainerScreen.
///
/// This class ensures that the HomePersonalUserContainerController is created when the
/// HomePersonalUserContainerScreen is first loaded.
class HomePersonalUserContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePersonalUserContainerController());
  }
}
