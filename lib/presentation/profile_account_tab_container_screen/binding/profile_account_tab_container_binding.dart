import '../controller/profile_account_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProfileAccountTabContainerScreen.
///
/// This class ensures that the ProfileAccountTabContainerController is created when the
/// ProfileAccountTabContainerScreen is first loaded.
class ProfileAccountTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileAccountTabContainerController());
  }
}
