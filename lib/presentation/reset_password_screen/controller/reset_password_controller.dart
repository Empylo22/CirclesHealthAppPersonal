import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/reset_password_screen/models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:empylo/data/models/resetPassword/post_reset_password_resp.dart';
import 'package:empylo/data/apiClient/api_client.dart';

/// A controller class for the ResetPasswordScreen.
///
/// This class manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj
class ResetPasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;

  PostResetPasswordResp postResetPasswordResp = PostResetPasswordResp();

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    confirmpasswordController.dispose();
  }

  /// Calls the https://empylo-app.vercel.app/auth/user/reset-password API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callResetPassword(Map req) async {
    try {
      postResetPasswordResp = await Get.find<ApiClient>().resetPassword(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleResetPasswordSuccess();
    } on PostResetPasswordResp catch (e) {
      postResetPasswordResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleResetPasswordSuccess() {}
}
