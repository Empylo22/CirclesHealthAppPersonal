import 'dart:convert';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/core/utils/progress_dialog_utils.dart';
import 'package:empylo/data/models/forgotPasswordPost/post_forgot_password_post_resp.dart';
import 'package:empylo/data/models/loginUser/post_login_user_resp.dart';
import 'package:empylo/data/models/resetPassword/patch_reset_password_resp.dart';
import 'package:empylo/data/models/signupUser/post_signup_user_resp.dart';
import 'package:empylo/data/models/verifyUserAuth/post_verify_user_auth_resp.dart';
import 'package:empylo/data/models/updateSignUpProfile/post_update_signup_resp.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiClient extends GetConnect {
  var url = "http://3.93.244.175:3579";
  PostLoginUserResp postLoginUserResp = PostLoginUserResp();

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

  /// is `true` for updateSignupProfile when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCallUp(http.Response response) {
    return response.statusCode >= 200 && response.statusCode < 300;
  }

  /// Performs API call for https://api.empylo.com/auth/user/reset-password
  ///
  /// Sends a PATCH request to the server's 'https://api.empylo.com/auth/user/reset-password' endpoint
  /// with the provided headers and request data
  /// Returns a [PostResetPasswordResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PatchResetPasswordResp> resetPassword({
    Map<String, String> headers = const {},
    Map requestData = const {},
  }) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.patch(
        '$url/auth/password-reset',
        headers: headers,
        body: requestData,
      );
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return PatchResetPasswordResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? PatchResetPasswordResp.fromJson(response.body)
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

  /// Performs API call for https://api.empylo.com/auth/id/update-signup-profile
  ///
  /// Sends a POST request to the server's 'https://api.empylo.com/auth/user/reset-password' endpoint
  /// with the provided headers and request data
  /// Returns a [PostUpdateSignupProfileResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<PostUpdateSignupProfileResp> updateSignupProfile({
  required String? accessToken,
  required Map<String, dynamic> requestData,
  File? file,
}) async {
  // Define headers for the request
  Map<String, String> headers = {
    'Content-Type': 'multipart/form-data',
    'Authorization': 'Bearer $accessToken',
  };

  ProgressDialogUtils.showProgressDialog();

  try {
    await isNetworkConnected();

    // Fetch the saved token and decode to get user ID
    String? accessToken = await getSavedToken();

    if (accessToken != null) {
      Map<String, dynamic> decodedToken = decodeToken(accessToken);
      String? userId = decodedToken['sub']['id']?.toString(); // Adjust based on your token structure

      if (userId != null) {
        // Construct the endpoint with the user ID
        String endpoint = '$url/user/update-user-info/$userId';

        // Create a multipart request
        var request = http.MultipartRequest('PATCH', Uri.parse(endpoint));

        // Add headers to the request
        request.headers.addAll(headers);

        // Add fields to the request
        requestData.forEach((key, value) {
          request.fields[key] = value.toString();
        });

        // Add file to the request if provided
        if (file != null) {
          request.files.add(
            await http.MultipartFile.fromPath('profileImage', file.path),
          );
        }

        // Send the request and get the response
        var streamedResponse = await request.send();
        var response = await http.Response.fromStream(streamedResponse);

        ProgressDialogUtils.hideProgressDialog();

        if (_isSuccessCallUp(response)) {
          return PostUpdateSignupProfileResp.fromJson(jsonDecode(response.body));
        } else {
          throw ErrorResponse.fromJson(jsonDecode(response.body));
        }
      } else {
        ProgressDialogUtils.hideProgressDialog();
        throw 'User ID not found in Response';
      }
    }

    // Handle cases where token or userId is null
    ProgressDialogUtils.hideProgressDialog();
    throw 'Invalid User ID';
  } catch (error, stackTrace) {
    ProgressDialogUtils.hideProgressDialog();
    Logger.log(error, stackTrace: stackTrace);
    rethrow;
  }
}
  /// Performs API call for https://api.empylo.com/auth/user/forgot-password
  ///
  /// Sends a POST request to the server's 'https://api.empylo.com/auth/user/forgot-password' endpoint
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
        '$url/auth/forgot-password',
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

  /// Performs API call for https://api.empylo.com/auth/user/verify
  ///
  /// Sends a POST request to the server's 'https://api.empylo.com/auth/user/verify' endpoint
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
        '$url/auth/verify-email-otp',
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

  /// Performs API call for https://api.empylo.com/auth/login
  ///
  /// Sends a POST request to the server's 'https://api.empylo.com/auth/login' endpoint
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
        '$url/auth/login',
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

  /// Performs API call for https://api.empylo.com/auth/signup
  ///
  /// Sends a POST request to the server's 'https://api.empylo.com/auth/signup' endpoint
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
        '$url/auth/user-signup',
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
