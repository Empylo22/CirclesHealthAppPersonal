import '../controller/personal_information_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PersonalInformationScreen.
///
/// This class ensures that the PersonalInformationController is created when the
/// PersonalInformationScreen is first loaded.
class PersonalInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PersonalInformationController());
  }
}
