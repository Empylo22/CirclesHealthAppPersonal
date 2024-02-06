import '../controller/daily_assessment_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DailyAssessmentThreeScreen.
///
/// This class ensures that the DailyAssessmentThreeController is created when the
/// DailyAssessmentThreeScreen is first loaded.
class DailyAssessmentThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DailyAssessmentThreeController());
  }
}
