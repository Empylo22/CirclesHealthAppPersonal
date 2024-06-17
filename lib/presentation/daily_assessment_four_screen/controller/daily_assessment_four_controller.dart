import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/daily_assessment_four_screen/models/daily_assessment_four_model.dart';

/// A controller class for the DailyAssessmentFourScreen.
///
/// This class manages the state of the DailyAssessmentFourScreen, including the
/// current dailyAssessmentFourModelObj
class DailyAssessmentFourController extends GetxController {
  Rx<DailyAssessmentFourModel> dailyAssessmentFourModelObj =
      DailyAssessmentFourModel().obs;
}
