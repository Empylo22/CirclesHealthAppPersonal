import '../controller/my_circles_faq_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyCirclesFaqScreen.
///
/// This class ensures that the MyCirclesFaqController is created when the
/// MyCirclesFaqScreen is first loaded.
class MyCirclesFaqBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCirclesFaqController());
  }
}
