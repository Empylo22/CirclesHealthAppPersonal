import '../controller/daily_assessment_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DailyAssessmentOneScreen.
///
/// This class ensures that the DailyAssessmentOneController is created when the
/// DailyAssessmentOneScreen is first loaded.
class DailyAssessmentOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DailyAssessmentOneController());
  }
}
