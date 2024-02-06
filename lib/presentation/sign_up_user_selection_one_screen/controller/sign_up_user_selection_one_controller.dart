import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/sign_up_user_selection_one_screen/models/sign_up_user_selection_one_model.dart';

/// A controller class for the SignUpUserSelectionOneScreen.
///
/// This class manages the state of the SignUpUserSelectionOneScreen, including the
/// current signUpUserSelectionOneModelObj
class SignUpUserSelectionOneController extends GetxController {
  Rx<SignUpUserSelectionOneModel> signUpUserSelectionOneModelObj =
      SignUpUserSelectionOneModel().obs;
}
