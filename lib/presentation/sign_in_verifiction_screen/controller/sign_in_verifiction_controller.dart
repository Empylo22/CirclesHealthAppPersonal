import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/sign_in_verifiction_screen/models/sign_in_verifiction_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';
import 'package:empylo/data/models/verifyUserAuth/post_verify_user_auth_resp.dart';
import 'package:empylo/data/apiClient/api_client.dart';

/// A controller class for the SignInVerifictionScreen.
///
/// This class manages the state of the SignInVerifictionScreen, including the
/// current signInVerifictionModelObj
class SignInVerifictionController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<SignInVerifictionModel> signInVerifictionModelObj =
      SignInVerifictionModel().obs;

  PostVerifyUserAuthResp postVerifyUserAuthResp = PostVerifyUserAuthResp();

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  /// Calls the https://empylo-app.vercel.app/auth/user/verify API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callVerifyUserAuth(Map req) async {
    try {
      postVerifyUserAuthResp = await Get.find<ApiClient>().verifyUserAuth(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      if ( postVerifyUserAuthResp.status != 200) {
        throw postVerifyUserAuthResp;
      }
      _handleVerifyUserAuthSuccess();
    } on PostVerifyUserAuthResp catch (e) {
      postVerifyUserAuthResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleVerifyUserAuthSuccess() {}
}
