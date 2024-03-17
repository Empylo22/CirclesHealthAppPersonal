import 'package:jwt_decoder/jwt_decoder.dart';

import 'controller/sign_in_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/core/utils/validation_functions.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:empylo/data/models/loginUser/post_login_user_req.dart';
import 'package:empylo/data/models/loginUser/post_login_user_resp.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgIntersect,
                                  height: 226.v,
                                  width: 393.h),
                              SizedBox(height: 19.v),
                              Text("lbl_sign_in2".tr,
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 48.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 25.h),
                                      child: Text("lbl_email_address".tr,
                                          style: CustomTextStyles
                                              .titleSmallSwitzerVariable))),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 25.h, right: 24.h),
                                  child: CustomTextFormField(
                                      controller: controller.emailController,
                                      hintText: "msg_enter_your_email".tr,
                                      hintStyle:
                                          CustomTextStyles.titleSmallGray600,
                                      textInputType: TextInputType.emailAddress,
                                      prefix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              16.h, 16.v, 8.h, 15.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgFluentmail12regular,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      prefixConstraints:
                                          BoxConstraints(maxHeight: 55.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidEmail(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_email"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      contentPadding: EdgeInsets.only(
                                          top: 19.v, right: 30.h, bottom: 19.v),
                                      borderDecoration: TextFormFieldStyleHelper
                                          .outlineGray)),
                              SizedBox(height: 15.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 25.h),
                                      child: Text("lbl_password".tr,
                                          style: CustomTextStyles
                                              .titleSmallSwitzerVariableGray80002))),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 25.h, right: 24.h),
                                  child: Obx(() => CustomTextFormField(
                                      controller: controller.passwordController,
                                      hintText: "msg_enter_your_password".tr,
                                      hintStyle:
                                          CustomTextStyles.titleSmallGray600,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      prefix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              16.h, 16.v, 8.h, 15.v),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgBxlock,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      prefixConstraints:
                                          BoxConstraints(maxHeight: 55.v),
                                      suffix: InkWell(
                                          onTap: () {
                                            controller.isShowPassword.value =
                                                !controller
                                                    .isShowPassword.value;
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 16.v, 16.h, 15.v),
                                              child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgMdieyeoutline,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize))),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 55.v),
                                      validator: (value) {
                                        if (value == null ||
                                            (!isValidPassword(value,
                                                isRequired: true))) {
                                          return "err_msg_please_enter_valid_password"
                                              .tr;
                                        }
                                        return null;
                                      },
                                      obscureText:
                                          controller.isShowPassword.value,
                                      borderDecoration: TextFormFieldStyleHelper
                                          .outlineGray))),
                              SizedBox(height: 40.v),
                              CustomElevatedButton(
                                  text: "lbl_sign_in3".tr,
                                  margin:
                                      EdgeInsets.only(left: 21.h, right: 20.h),
                                  rightIcon: Container(
                                      margin: EdgeInsets.only(left: 16.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgArrowleft,
                                          height: 20.v,
                                          width: 24.h)),
                                  onPressed: () {
                                    onTapSignIn();
                                  }),
                              SizedBox(height: 32.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 56.adaptSize,
                                        width: 56.adaptSize,
                                        padding: EdgeInsets.all(15.h),
                                        decoration:
                                            IconButtonStyleHelper.outlineGray,
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgFrame)),
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: CustomIconButton(
                                            height: 56.adaptSize,
                                            width: 56.adaptSize,
                                            padding: EdgeInsets.all(16.h),
                                            decoration: IconButtonStyleHelper
                                                .outlineGray,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgFrameOnprimary))),
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.h),
                                        child: CustomIconButton(
                                            height: 56.adaptSize,
                                            width: 56.adaptSize,
                                            padding: EdgeInsets.all(15.h),
                                            decoration: IconButtonStyleHelper
                                                .outlineGray,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgFrameOnprimary56x56)))
                                  ]),
                              SizedBox(height: 17.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtDonthaveanaccount();
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "msg_don_t_have_an_account2".tr,
                                            style: CustomTextStyles
                                                .titleSmallff191919),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .titleSmallffffb347)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 8.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotPassword();
                                  },
                                  child: Text("lbl_forgot_password".tr,
                                      style: CustomTextStyles
                                          .titleSmallOnPrimaryContainer)),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// calls the [https://empylo-app.vercel.app/auth/user/login] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostLoginUserReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onOnTapSignInSuccess()` function.
  /// If the call fails, the function calls the `_onOnTapSignInError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapSignIn() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Prepare request data
        Map<String, dynamic> requestData = {
          'email': controller.emailController.text,
          'password': controller.passwordController.text,
        };

        // Pass the request data to callLoginUser
        await controller.callLoginUser(requestData);
        _onOnTapSignInSuccess();
      } on PostLoginUserResp {
        _onOnTapSignInError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
        Get.rawSnackbar(message: e.toString());
      }
    }
  }

  /// Navigates to the homePersonalUserContainer1Screen when the action is triggered.
  void _onOnTapSignInSuccess() {
    try {
      // Access the accessToken from the data field
      String? accessToken = controller.postLoginUserResp.data?.accessToken;

      if (accessToken != null) {
        // Decode the accessToken payload
        Map<String, dynamic> payload = JwtDecoder.decode(accessToken);

        // Access the accountType
        String? accountType = payload['accountType'];
        String? firstName = payload['firstName'];
        String? lastName = payload['lastName'];

        if (firstName == null && lastName == null) {
          // If both firstName and lastName are null, navigate to profile setup
          if (accountType == 'personalUser') {
            Get.toNamed(AppRoutes.profileSetupScreen);
          } else if (accountType == 'clientUser') {
            Get.toNamed(AppRoutes.profileSetupClientUserScreen);
          } else if (accountType == null) {
            Get.toNamed(AppRoutes.signUpUserSelectionScreen);
          }
        } else {
          // If firstName or lastName is not null, navigate to home screen
          Get.toNamed(AppRoutes.homePersonalUserContainerScreen);
        }

        // Clear the text controllers
        controller.emailController.clear();
        controller.passwordController.clear();
      }
    } catch (e) {
      // Handles decoding errors or other issues
      print('Error decoding accessToken payload: $e');
    }
  }

// Get.toNamed(
  //   AppRoutes.homePersonalUserContainerScreen,
  // );
  // controller.emailController.clear();

  // controller.passwordController.clear();
  /// Displays an alert dialog when the action is triggered.
  /// This function is typically called in response to a API call. It retrieves
  /// the `message` data from the `PostLoginUserResp`
  /// object in the `controller` using the `message` field.
  void _onOnTapSignInError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: 'Error',
        backgroundColor: Colors.deepOrange,
        middleText: controller.postLoginUserResp.message.toString() ?? '');
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
}
