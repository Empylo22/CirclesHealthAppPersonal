import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/explore_group_activities_page/models/explore_group_activities_model.dart';

/// A controller class for the ExploreGroupActivitiesPage.
///
/// This class manages the state of the ExploreGroupActivitiesPage, including the
/// current exploreGroupActivitiesModelObj
class ExploreGroupActivitiesController extends GetxController {
  ExploreGroupActivitiesController(this.exploreGroupActivitiesModelObj);

  Rx<ExploreGroupActivitiesModel> exploreGroupActivitiesModelObj;
}
