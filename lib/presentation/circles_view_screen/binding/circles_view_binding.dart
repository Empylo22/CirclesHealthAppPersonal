import '../controller/circles_view_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CirclesViewScreen.
///
/// This class ensures that the CirclesViewController is created when the
/// CirclesViewScreen is first loaded.
class CirclesViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CirclesViewController());
  }
}
