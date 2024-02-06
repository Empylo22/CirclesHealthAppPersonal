import '../controller/index_controller.dart';
import 'package:get/get.dart';

/// A binding class for the IndexScreen.
///
/// This class ensures that the IndexController is created when the
/// IndexScreen is first loaded.
class IndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IndexController());
  }
}
