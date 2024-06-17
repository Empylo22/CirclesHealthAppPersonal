import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/daily_assessment_three_screen/models/daily_assessment_three_model.dart';

/// A controller class for the DailyAssessmentThreeScreen.
///
/// This class manages the state of the DailyAssessmentThreeScreen, including the
/// current dailyAssessmentThreeModelObj
class DailyAssessmentThreeController extends GetxController {
  Rx<DailyAssessmentThreeModel> dailyAssessmentThreeModelObj =
      DailyAssessmentThreeModel().obs;
}
