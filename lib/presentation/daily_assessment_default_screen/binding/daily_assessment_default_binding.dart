import '../controller/daily_assessment_default_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DailyAssessmentDefaultScreen.
///
/// This class ensures that the DailyAssessmentDefaultController is created when the
/// DailyAssessmentDefaultScreen is first loaded.
class DailyAssessmentDefaultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DailyAssessmentDefaultController());
  }
}
