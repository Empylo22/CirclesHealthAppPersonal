import '../../../core/app_export.dart';
import 'userprofilelist1_item_model.dart';
import 'userprofilelist2_item_model.dart';

/// This class defines the variables used in the [explore_self_development_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ExploreSelfDevelopmentModel {
  Rx<List<Userprofilelist1ItemModel>> userprofilelist1ItemList = Rx([
    Userprofilelist1ItemModel(
        image1: ImageConstant.imgRectangle13.obs,
        text1: "12 Mins".obs,
        text2: "Sleep hygiene".obs,
        text3: "LEARN".obs)
  ]);

  Rx<List<Userprofilelist2ItemModel>> userprofilelist2ItemList = Rx([
    Userprofilelist2ItemModel(
        todayImage: ImageConstant.imgRectangle21.obs,
        todayText: "Today".obs,
        dreamsText: "Every step I take, brings me closer to my dreams".obs),
    Userprofilelist2ItemModel(
        todayImage: ImageConstant.imgRectangle22.obs,
        todayText: "Thursday, 22 November".obs,
        dreamsText: "I am strong and capable;\nI can overcome any obstacle".obs)
  ]);
}
