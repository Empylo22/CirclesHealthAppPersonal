import 'package:flutter/material.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/core/utils/validation_functions.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
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
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.fromLTRB(16.h, 8.v, 337.h, 8.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// calls the [https://empylo-app.vercel.app/auth/user/forgot-password] API
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
      } on PostForgotPasswordPostResp {
        _onForgotPasswordError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  void _onForgotPasswordSuccess() {
    Get.rawSnackbar(message: "An OTP has been sent to your mail");
    Get.toNamed(AppRoutes.resetCodePopupScreen);
  }

  void _onForgotPasswordError() {
    PostForgotPasswordPostResp postForgotPasswordPostResp =
        PostForgotPasswordPostResp();

    if (postForgotPasswordPostResp.statusCode == 404) {
      Get.rawSnackbar(message: "Email not found. Please enter a valid email.");
    } else if (postForgotPasswordPostResp.statusCode == 400) {
      Get.rawSnackbar(message: "Invalid request. Please check your email.");
    } else if (postForgotPasswordPostResp.statusCode == 500) {
      Get.rawSnackbar(message: postForgotPasswordPostResp.message);
    }
    //Get.rawSnackbar(message: "Invalid Email, please enter an existing email");
  }
}
