import '../controller/create_new_circle_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateNewCircleScreen.
///
/// This class ensures that the CreateNewCircleController is created when the
/// CreateNewCircleScreen is first loaded.
class CreateNewCircleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateNewCircleController());
  }
}
