import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/choose_plan_popup_screen/models/choose_plan_popup_model.dart';

/// A controller class for the ChoosePlanPopupScreen.
///
/// This class manages the state of the ChoosePlanPopupScreen, including the
/// current choosePlanPopupModelObj
class ChoosePlanPopupController extends GetxController {
  Rx<ChoosePlanPopupModel> choosePlanPopupModelObj = ChoosePlanPopupModel().obs;
}
