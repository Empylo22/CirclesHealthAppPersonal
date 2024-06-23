import 'package:empylo/core/app_export.dart';
import 'package:empylo/data/models/loginUser/post_login_user_resp.dart';
import 'package:empylo/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:empylo/data/models/signupUser/post_signup_user_resp.dart';
import 'package:empylo/data/apiClient/api_client.dart';

/// A controller class for the SignUpScreen.
///
/// This class manages the state of the SignUpScreen, including the
/// current signUpModelObj
class SignUpController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  Rx<bool> iAgreeToTheTermsAndPrivacy = false.obs;

  PostSignupUserResp postSignupUserResp = PostSignupUserResp();
  PostLoginUserResp postLoginUserResp = PostLoginUserResp();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  /// Calls the https://empylo-app.vercel.app/auth/user/signup API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callSignupUser() async {
    
    try {
      final req = {
        'email': emailController.text,
        'password': passwordController.text,
        'termsConditions': iAgreeToTheTermsAndPrivacy.value,
      };

      await Get.find<ApiClient>().signupUser(
        headers: {'Content-type': 'application/json'},
        requestData: req,
      );

      _handleSignupUserSuccess();
    } catch (e) {
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleSignupUserSuccess() {}
}
