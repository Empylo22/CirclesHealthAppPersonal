import 'package:empylo/core/app_export.dart';
import 'package:empylo/data/models/updateSignUpProfile/post_update_signup_req.dart';
import 'package:empylo/presentation/sign_up_user_selection_screen/models/sign_up_user_selection_model.dart';

/// A controller class for the SignUpUserSelectionScreen.
///
/// This class manages the state of the SignUpUserSelectionScreen, including the
/// current signUpUserSelectionModelObj
class SignUpUserSelectionController extends GetxController {
  Rx<SignUpUserSelectionModel> signUpUserSelectionModelObj =
      SignUpUserSelectionModel().obs;
  void updateUserType(String userType) async {
    await PostUpdateSignUpProfileRequest.updateAccountType(userType);
  }
}
