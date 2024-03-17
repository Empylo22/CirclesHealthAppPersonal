import 'package:empylo/core/app_export.dart';
import 'package:empylo/core/utils/progress_dialog_utils.dart';
import 'package:empylo/data/models/forgotPasswordPost/post_forgot_password_post_resp.dart';
import 'package:empylo/data/models/loginUser/post_login_user_resp.dart';
import 'package:empylo/data/models/resetPassword/post_reset_password_resp.dart';
import 'package:empylo/data/models/signupUser/post_signup_user_resp.dart';
import 'package:empylo/data/models/verifyUserAuth/post_verify_user_auth_resp.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:empylo/data/models/updateSignUpProfile/post_update_signup_resp.dart';

class ApiClient extends GetConnect {
  var url = "https://empylo-app.vercel.app";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for https://empylo-app.vercel.app/auth/id/update-signup-profile
  ///
  /// Sends a POST request to the server's 'https://empylo-app.vercel.app/auth/user/reset-password' endpoint
  /// with the provided headers and request data
  /// Returns a [PostUpdateSignupProfileResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostUpdateSignupProfileResp> updateSignupProfile({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();

    try {
      await isNetworkConnected();

      // Fetches the saved token

      String? token = await getSavedToken();

      if (token != null) {
        // Decodes the token to extract the ID

        Map<String, dynamic> decodedToken = decodeToken(token);

        String? userId = decodedToken['id']?.toString();

        if (userId != null) {
          // Constructs the endpoint with the user ID

          String endpoint = '$url/auth/$userId/update-signup-profile';

          Response response = await httpClient.post(
            endpoint,
            headers: headers,
            body: requestData,
          );

          ProgressDialogUtils.hideProgressDialog();

          if (_isSuccessCall(response)) {
            return PostUpdateSignupProfileResp.fromJson(response.body);
          } else {
            throw response.body != null
                ? PostUpdateSignupProfileResp.fromJson(response.body)
                : 'Something Went Wrong!';
          }
        } else {
          ProgressDialogUtils.hideProgressDialog();
          throw 'User ID not found in the decoded token';
        }
      }

      // Handles cases where token or userId is null

      ProgressDialogUtils.hideProgressDialog();

      throw 'Invalid User ID';
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();

      Logger.log(
        error,
        stackTrace: stackTrace,
      );

      rethrow;
    }
  }

  // /// Performs API call for https://empylo-app.vercel.app/auth/user/forgot-password

  // ///

  // /// Sends a POST request to the server's 'https://empylo-app.vercel.app/auth/user/forgot-password' endpoint

  // /// with the provided headers and request data

  // /// Returns a [PostForgotPasswordPostResp] object representing the response.

  // /// Throws an error if the request fails or an exception occurs.

  // Future<PostForgotPasswordPostResp> forgotPasswordPost({

  //   Map<String, String> headers = const {},

  //   Map requestData = const {},

  // }) async {

  //   ProgressDialogUtils.showProgressDialog();

  //   try {

  //     await isNetworkConnected();

  //     Response response = await httpClient.post(

  //       '$url/auth/user/forgot-password',

  //       headers: headers,

  //       body: requestData,

  //     );

  //     ProgressDialogUtils.hideProgressDialog();

  //     if (_isSuccessCall(response)) {

  //       return PostForgotPasswordPostResp.fromJson(response.body);

  //     } else {

  //       throw response.body != null

  //           ? PostForgotPasswordPostResp.fromJson(response.body)

  //           : 'Something Went Wrong!';

  //     }

  //   } catch (error, stackTrace) {

  //     ProgressDialogUtils.hideProgressDialog();

  //     Logger.log(

  //       error,

  //       stackTrace: stackTrace,

  //     );

  //     rethrow;

  //   }

  // }
  /// Performs API call for https://empylo-app.vercel.app/auth/user/forgot-password
  ///
  /// Sends a POST request to the server's 'https://empylo-app.vercel.app/auth/user/forgot-password' endpoint
  /// with the provided headers and request data
  /// Returns a [PostForgotPasswordPostResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostForgotPasswordPostResp> forgotPasswordPost({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/user/forgot-password',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostForgotPasswordPostResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostForgotPasswordPostResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://empylo-app.vercel.app/auth/user/verify
  ///
  /// Sends a POST request to the server's 'https://empylo-app.vercel.app/auth/user/verify' endpoint
  /// with the provided headers and request data
  /// Returns a [PostVerifyUserAuthResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostVerifyUserAuthResp> verifyUserAuth({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/user/verify',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostVerifyUserAuthResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostVerifyUserAuthResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://empylo-app.vercel.app/auth/user/login
  ///
  /// Sends a POST request to the server's 'https://empylo-app.vercel.app/auth/user/login' endpoint
  /// with the provided headers and request data
  /// Returns a [PostLoginUserResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostLoginUserResp> loginUser({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/user/login',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostLoginUserResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostLoginUserResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  /// Performs API call for https://empylo-app.vercel.app/auth/user/signup
  ///
  /// Sends a POST request to the server's 'https://empylo-app.vercel.app/auth/user/signup' endpoint
  /// with the provided headers and request data
  /// Returns a [PostSignupUserResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostSignupUserResp> signupUser({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
        '$url/auth/user/signup',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PostSignupUserResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PostSignupUserResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
