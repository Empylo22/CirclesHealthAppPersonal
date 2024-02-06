import '../controller/daily_assessment_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DailyAssessmentFourScreen.
///
/// This class ensures that the DailyAssessmentFourController is created when the
/// DailyAssessmentFourScreen is first loaded.
class DailyAssessmentFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DailyAssessmentFourController());
  }
}
