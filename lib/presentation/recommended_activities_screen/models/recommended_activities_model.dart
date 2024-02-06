import 'learn_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [recommended_activities_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecommendedActivitiesModel {
  Rx<List<LearnItemModel>> learnItemList =
      Rx(List.generate(2, (index) => LearnItemModel()));
}
