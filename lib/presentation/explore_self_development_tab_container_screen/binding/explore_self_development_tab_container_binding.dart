import '../controller/explore_self_development_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExploreSelfDevelopmentTabContainerScreen.
///
/// This class ensures that the ExploreSelfDevelopmentTabContainerController is created when the
/// ExploreSelfDevelopmentTabContainerScreen is first loaded.
class ExploreSelfDevelopmentTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExploreSelfDevelopmentTabContainerController());
  }
}
