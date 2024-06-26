import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/core/utils/validation_functions.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'controller/forgot_password_controller.dart';
import 'package:empylo/data/models/forgotPasswordPost/post_forgot_password_post_req.dart';
import 'package:empylo/data/models/forgotPasswordPost/post_forgot_password_post_resp.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 9.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_forgot_password".tr,
                                      style: theme.textTheme.headlineSmall)),
                              SizedBox(height: 42.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgEmail55689971,
                                  height: 120.adaptSize,
                                  width: 120.adaptSize),
                              SizedBox(height: 16.v),
                              Container(
                                  width: 353.h,
                                  margin:
                                      EdgeInsets.only(left: 8.h, right: 7.h),
                                  child: Text("msg_please_enter_your".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.bodyMedium)),
                              SizedBox(height: 17.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.h),
                                  child: CustomTextFormField(
                                      controller: controller.passwordController,
                                      hintText: "msg_enter_your_email".tr,
                                      hintStyle:
                                          CustomTextStyles.titleSmallGray600,
                                      textInputAction: TextInputAction.done,
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
                              SizedBox(height: 58.v),
                              CustomElevatedButton(
                                  text: "lbl_reset_password".tr,
                                  margin:
                                      EdgeInsets.only(left: 4.h, right: 6.h),
                                  onPressed: () {
                                    onTapResetPassword();
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 19.h, top: 9.h),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  onTap: () {
                    onTapArrowLeft();
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftBlack900))),
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// calls the [https://api.empylo.com/auth/user/forgot-password] API
  ///
  /// validates the form input fields and executes the API if all the fields are valid
  /// It has [PostForgotPasswordPostReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onForgotPasswordSuccess()` function.
  /// If the call fails, the function calls the `_onForgotPasswordError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapResetPassword() async {
    if (_formKey.currentState!.validate()) {
      PostForgotPasswordPostReq postForgotPasswordPostReq =
          PostForgotPasswordPostReq(
        email: controller.passwordController.text,
      );
      try {
        await controller.callForgotPasswordPost(
          postForgotPasswordPostReq.toJson(),
        );
        _onForgotPasswordSuccess();
      } on PostForgotPasswordPostResp catch (error) {
        // Handle different status codes
        if (error.status == 404) {
          Get.rawSnackbar(
            message: "Email not found. Please enter a valid email.",
          );
        } else if (error.status == 400) {
          Get.rawSnackbar(
              message: error.message,
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.red);
        } else if (error.status == 500) {
          Get.rawSnackbar(
              message:
                  error.message ?? "An error occurred. Please try again later.",
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.red);
        } else {
          // Handle other status codes if needed
          Get.rawSnackbar(
              message: "An error occurred. Please try again later.",
              snackPosition: SnackPosition.TOP,
              backgroundColor: Colors.red);
        }
      } on NoInternetException catch (e) {
        Get.rawSnackbar(
          backgroundColor: Colors.red,
          message: e.toString(),
          snackPosition: SnackPosition.TOP,
        );
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  void _onForgotPasswordSuccess() async {
    await Get.rawSnackbar(
        message: "An OTP has been sent to your mail",
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green);
    Get.toNamed(AppRoutes.resetCodePopupScreen);
  }

  void _onForgotPasswordError(dynamic error) {
    if (error is PostForgotPasswordPostResp) {
      if (error.status == 404) {
        Get.rawSnackbar(
            message: "Email not found. Please enter a valid email.",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red);
      } else if (error.status == 400) {
        Get.rawSnackbar(
            message: error.message,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red);
      } else if (error.status == 500) {
        Get.rawSnackbar(
            message: error.message,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red);
      }
    } else {
      // Handle other types of errors, if necessary
      // For example, handle network errors, server errors, etc.
      Get.rawSnackbar(message: "An error occurred. Please try again later.");
    }
    void _onForgotPasswordError(PostForgotPasswordPostResp error) {
      if (error.status == 404) {
        Get.rawSnackbar(
            message: "Email not found. Please enter a valid email.",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red);
      } else if (error.status == 400) {
        Get.rawSnackbar(
            message: error.message,
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red);
      } else if (error.status == 500) {
        Get.rawSnackbar(
            message:
                error.message ?? "An error occurred. Please try again later.",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red);
      } else {
        // Handle other status codes if needed
        Get.rawSnackbar(
            message: "An error occurred. Please try again later.",
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red);
      }
    }
  }
}
