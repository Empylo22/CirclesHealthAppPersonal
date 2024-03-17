import '../../../core/app_export.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [explore_group_activities_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreGroupActivitiesModel {Rx<List<UserprofileItemModel>> userprofileItemList = Rx([UserprofileItemModel(stackImage:ImageConstant.imgRectangle21.obs,todayText: "Today".obs,dreamsText: "Every step I take, brings me closer to my dreams".obs),UserprofileItemModel(stackImage:ImageConstant.imgRectangle22.obs,todayText: "Thursday, 22 November".obs,dreamsText: "I am strong and capable;\nI can overcome any obstacle".obs)]);

 }
