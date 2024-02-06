import '../controller/huddle_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HuddleScreen.
///
/// This class ensures that the HuddleController is created when the
/// HuddleScreen is first loaded.
class HuddleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HuddleController());
  }
}
