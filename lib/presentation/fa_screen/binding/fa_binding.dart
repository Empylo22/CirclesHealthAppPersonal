import '../controller/fa_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FaScreen.
///
/// This class ensures that the FaController is created when the
/// FaScreen is first loaded.
class FaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FaController());
  }
}
