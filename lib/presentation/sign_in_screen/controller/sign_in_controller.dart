import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';
import 'package:empylo/data/models/loginUser/post_login_user_resp.dart';
import 'package:empylo/data/apiClient/api_client.dart';

/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = true.obs;

  PostLoginUserResp postLoginUserResp = PostLoginUserResp();

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }

  /// Calls the https://api.empylo.com/auth/user/login API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callLoginUser(Map req) async {
    try {
      postLoginUserResp = await Get.find<ApiClient>().loginUser(
        headers: {
          'Content-type': 'application/json',
        },
        requestData: req,
      );
      // Assuming the response structure contains an 'accessToken'
      // int? userId = postLoginUserResp.result?.user?.id;
      String? accessToken = postLoginUserResp.result?.accessToken;
      if (postLoginUserResp.status != 200) {
        throw postLoginUserResp;
      }

      if (accessToken != null) {
        // Save the token in SharedPreferences
        await saveToken(accessToken);
        Map<String, dynamic> decodedToken = decodeToken(accessToken);
        String? userId = decodedToken['sub']['id']?.toString();
        print(userId);
        print(accessToken);
        _handleLoginUserSuccess();
      }
    } on PostLoginUserResp catch (e) {
      postLoginUserResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleLoginUserSuccess() {}
}
