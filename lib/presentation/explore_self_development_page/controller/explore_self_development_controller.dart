import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/explore_self_development_page/models/explore_self_development_model.dart';

/// A controller class for the ExploreSelfDevelopmentPage.
///
/// This class manages the state of the ExploreSelfDevelopmentPage, including the
/// current exploreSelfDevelopmentModelObj
class ExploreSelfDevelopmentController extends GetxController {
  ExploreSelfDevelopmentController(this.exploreSelfDevelopmentModelObj);

  Rx<ExploreSelfDevelopmentModel> exploreSelfDevelopmentModelObj;
}
