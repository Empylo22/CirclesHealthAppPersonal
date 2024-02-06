import '../controller/daily_assessment_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DailyAssessmentTwoScreen.
///
/// This class ensures that the DailyAssessmentTwoController is created when the
/// DailyAssessmentTwoScreen is first loaded.
class DailyAssessmentTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DailyAssessmentTwoController());
  }
}
