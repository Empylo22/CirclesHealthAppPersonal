import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/recommended_activities_screen/models/recommended_activities_model.dart';

/// A controller class for the RecommendedActivitiesScreen.
///
/// This class manages the state of the RecommendedActivitiesScreen, including the
/// current recommendedActivitiesModelObj
class RecommendedActivitiesController extends GetxController {
  Rx<RecommendedActivitiesModel> recommendedActivitiesModelObj =
      RecommendedActivitiesModel().obs;
}
