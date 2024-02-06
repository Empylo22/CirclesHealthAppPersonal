import '../../../core/app_export.dart';
import 'dailymeditation_item_model.dart';

/// This class defines the variables used in the [explore_group_activities_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreGroupActivitiesTabContainerModel {
  Rx<List<DailymeditationItemModel>> dailymeditationItemList = Rx([
    DailymeditationItemModel(
        image1: ImageConstant.imgRectangle123.obs,
        text1: "10 Mins".obs,
        text2: "Understanding\nboundaries ".obs,
        text3: "LEARN".obs)
  ]);
}
