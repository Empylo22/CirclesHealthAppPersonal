import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/daily_assessment_two_screen/models/daily_assessment_two_model.dart';

/// A controller class for the DailyAssessmentTwoScreen.
///
/// This class manages the state of the DailyAssessmentTwoScreen, including the
/// current dailyAssessmentTwoModelObj
class DailyAssessmentTwoController extends GetxController {
  Rx<DailyAssessmentTwoModel> dailyAssessmentTwoModelObj =
      DailyAssessmentTwoModel().obs;
}
