import '../../../core/app_export.dart';
import 'sleepqualitysection_item_model.dart';

/// This class defines the variables used in the [home_personal_user_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePersonalUserModel {
  Rx<List<SleepqualitysectionItemModel>> sleepqualitysectionItemList = Rx([
    SleepqualitysectionItemModel(
        icon: ImageConstant.imgIconParkOutlineSleep.obs,
        title: "Sleep quality".obs,
        subtitle: "Low".obs),
    SleepqualitysectionItemModel(
        icon: ImageConstant.imgMaterialSymbolsMoodOutline.obs,
        title: "Mood ".obs,
        subtitle: "Low".obs),
    SleepqualitysectionItemModel(
        icon: ImageConstant.imgRiMentalHealthLine.obs,
        title: "Stress level".obs,
        subtitle: "Low".obs)
  ]);
}
