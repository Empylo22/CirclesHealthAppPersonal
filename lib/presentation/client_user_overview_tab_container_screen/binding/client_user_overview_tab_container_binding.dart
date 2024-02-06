import '../controller/client_user_overview_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ClientUserOverviewTabContainerScreen.
///
/// This class ensures that the ClientUserOverviewTabContainerController is created when the
/// ClientUserOverviewTabContainerScreen is first loaded.
class ClientUserOverviewTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ClientUserOverviewTabContainerController());
  }
}
