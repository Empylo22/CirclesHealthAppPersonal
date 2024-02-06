import '../controller/on_1_call_controller.dart';
import 'package:get/get.dart';

/// A binding class for the On1CallScreen.
///
/// This class ensures that the On1CallController is created when the
/// On1CallScreen is first loaded.
class On1CallBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => On1CallController());
  }
}
