import 'package:empylo/core/app_export.dart';
import 'package:empylo/data/apiClient/api_client.dart';
import 'package:empylo/data/models/resetPassword/patch_reset_password_resp.dart';
import 'package:empylo/presentation/reset_password_screen/models/reset_password_model.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

/// A controller class for the ResetPasswordScreen.
///
/// This class manages the state of the ResetPasswordScreen, including the
/// current resetPasswordModelObj
class ResetPasswordController extends GetxController with CodeAutoFill {
  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  Rx<ResetPasswordModel> resetPasswordModelObj = ResetPasswordModel().obs;

  TextEditingController otpController = TextEditingController();

  Rx<bool> isShowPassword = true.obs;

  Rx<bool> isShowPassword1 = true.obs;
  PatchResetPasswordResp patchResetPasswordResp = PatchResetPasswordResp();

  @override
  void codeUpdated() {
    otpController.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onClose() {
    super.onClose();

    passwordController.dispose();
    confirmpasswordController.dispose();
  }

// Calls the https://api.empylo.com/auth/password-reset API with the specified

  /// The [Map] parameter represents request body

  Future<void> callResetPassword(Map<String, dynamic> req) async {
    final savedOtp = getSavedOtp();
    try {
      patchResetPasswordResp = await Get.find<ApiClient>().resetPassword(
          headers: {'Content-type': 'application/json'}, requestData: req);
      if (patchResetPasswordResp.status != 200) {
        throw patchResetPasswordResp;
      }
      _handleResetPasswordSuccess();
    } on PatchResetPasswordResp catch (e) {
      patchResetPasswordResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API

  void _handleResetPasswordSuccess() {}
}
