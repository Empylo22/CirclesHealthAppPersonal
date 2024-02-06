import '../controller/daily_assessment_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DailyAssessmentFiveScreen.
///
/// This class ensures that the DailyAssessmentFiveController is created when the
/// DailyAssessmentFiveScreen is first loaded.
class DailyAssessmentFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DailyAssessmentFiveController());
  }
}
