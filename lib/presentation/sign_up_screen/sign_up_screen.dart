import 'controller/sign_up_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/core/utils/validation_functions.dart';
import 'package:empylo/widgets/custom_checkbox_button.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

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
                                  height: 225.v,
                                  width: 393.h),
                              SizedBox(height: 19.v),
                              Text("lbl_sign_up2".tr,
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 20.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 26.h),
                                      child: Text("lbl_email_address".tr,
                                          style: CustomTextStyles
                                              .titleSmallSwitzerVariable))),
                              SizedBox(height: 7.v),
                              _buildEmail(),
                              SizedBox(height: 23.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 26.h),
                                      child: Text("lbl_password".tr,
                                          style: CustomTextStyles
                                              .titleSmallSwitzerVariableGray80002))),
                              SizedBox(height: 7.v),
                              _buildPassword(),
                              SizedBox(height: 24.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 26.h),
                                      child: Text("msg_confirm_password".tr,
                                          style: CustomTextStyles
                                              .titleSmallSwitzerVariableGray80002))),
                              SizedBox(height: 6.v),
                              _buildConfirmpassword(),
                              SizedBox(height: 14.v),
                              _buildIAgreeToTheTermsAndPrivacy(),
                              SizedBox(height: 32.v),
                              _buildSignUp(),
                              SizedBox(height: 24.v),
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
                                    onTapTxtAlreadyhavean();
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "lbl_already".tr,
                                            style: CustomTextStyles
                                                .titleSmallff191919),
                                        TextSpan(
                                            text: "msg_have_an_account".tr,
                                            style: CustomTextStyles
                                                .titleSmallff191919),
                                        TextSpan(
                                            text: "lbl_sign_in".tr,
                                            style: CustomTextStyles
                                                .titleSmallffffb347)
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.only(left: 26.h, right: 24.h),
        child: CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_enter_your_email".tr,
            hintStyle: CustomTextStyles.titleSmallGray600,
            textInputType: TextInputType.emailAddress,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 15.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgFluentmail12regular,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 55.v),
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding:
                EdgeInsets.only(top: 19.v, right: 30.h, bottom: 19.v),
            borderDecoration: TextFormFieldStyleHelper.outlineGray));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.only(left: 26.h, right: 24.h),
        child: Obx(() => CustomTextFormField(
            controller: controller.passwordController,
            hintText: "msg_enter_your_password".tr,
            hintStyle: CustomTextStyles.titleSmallGray600,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 15.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgBxlock,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 55.v),
            suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 15.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgMdieyeoutline,
                        height: 24.adaptSize,
                        width: 24.adaptSize))),
            suffixConstraints: BoxConstraints(maxHeight: 55.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: controller.isShowPassword.value,
            borderDecoration: TextFormFieldStyleHelper.outlineGray)));
  }

  /// Section Widget
  Widget _buildConfirmpassword() {
    return Padding(
        padding: EdgeInsets.only(left: 26.h, right: 24.h),
        child: Obx(() => CustomTextFormField(
            controller: controller.confirmpasswordController,
            hintText: "msg_enter_your_password".tr,
            hintStyle: CustomTextStyles.titleSmallGray600,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 15.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgBxlock,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 55.v),
            suffix: InkWell(
                onTap: () {
                  controller.isShowPassword1.value =
                      !controller.isShowPassword1.value;
                },
                child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 15.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgMdieyeoutline,
                        height: 24.adaptSize,
                        width: 24.adaptSize))),
            suffixConstraints: BoxConstraints(maxHeight: 55.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: controller.isShowPassword1.value,
            borderDecoration: TextFormFieldStyleHelper.outlineGray)));
  }

  /// Section Widget
  Widget _buildIAgreeToTheTermsAndPrivacy() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Obx(() => CustomCheckboxButton(
                alignment: Alignment.centerLeft,
                text: "msg_i_agree_to_the_terms".tr,
                value: controller.iAgreeToTheTermsAndPrivacy.value,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  controller.iAgreeToTheTermsAndPrivacy.value = value;
                }))));
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
        text: "lbl_sign_up3".tr,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowleft,
                height: 20.v,
                width: 24.h)),
        onPressed: () {
          onTapSignUp();
        });
  }

  /// Navigates to the signUpUserSelectionScreen when the action is triggered.
  onTapSignUp() {
    Get.toNamed(
      AppRoutes.signUpUserSelectionScreen,
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
