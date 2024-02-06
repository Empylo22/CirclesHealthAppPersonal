import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/daily_assessment_one_screen/models/daily_assessment_one_model.dart';

/// A controller class for the DailyAssessmentOneScreen.
///
/// This class manages the state of the DailyAssessmentOneScreen, including the
/// current dailyAssessmentOneModelObj
class DailyAssessmentOneController extends GetxController {
  Rx<DailyAssessmentOneModel> dailyAssessmentOneModelObj =
      DailyAssessmentOneModel().obs;
}
