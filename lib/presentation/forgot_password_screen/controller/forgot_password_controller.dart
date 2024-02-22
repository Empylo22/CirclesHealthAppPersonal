import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/forgot_password_screen/models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:empylo/data/models/forgotPasswordPost/post_forgot_password_post_resp.dart';
import 'package:empylo/data/apiClient/api_client.dart';

/// A controller class for the ForgotPasswordScreen.
///
/// This class manages the state of the ForgotPasswordScreen, including the
/// current forgotPasswordModelObj
class ForgotPasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  PostForgotPasswordPostResp postForgotPasswordPostResp =
      PostForgotPasswordPostResp();

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
  }

  /// Calls the https://empylo-app.vercel.app/auth/user/forgot-password API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callForgotPasswordPost(Map req) async {
    try {
      postForgotPasswordPostResp =
          await Get.find<ApiClient>().forgotPasswordPost(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      _handleForgotPasswordPostSuccess();
    } on PostForgotPasswordPostResp catch (e) {
      postForgotPasswordPostResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleForgotPasswordPostSuccess() {}
}
