import '../controller/affirmations_page_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AffirmationsPageScreen.
///
/// This class ensures that the AffirmationsPageController is created when the
/// AffirmationsPageScreen is first loaded.
class AffirmationsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AffirmationsPageController());
  }
}
