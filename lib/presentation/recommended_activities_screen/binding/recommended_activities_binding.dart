import '../controller/recommended_activities_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RecommendedActivitiesScreen.
///
/// This class ensures that the RecommendedActivitiesController is created when the
/// RecommendedActivitiesScreen is first loaded.
class RecommendedActivitiesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RecommendedActivitiesController());
  }
}
