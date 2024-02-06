import 'controller/reset_password_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/core/utils/validation_functions.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  ResetPasswordScreen({Key? key}) : super(key: key);

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
                                horizontal: 13.h, vertical: 8.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_reset_password".tr,
                                      style: theme.textTheme.headlineSmall),
                                  SizedBox(height: 57.v),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                          width: 334.h,
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 16.h),
                                          child: Text(
                                              "msg_your_new_password".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: CustomTextStyles
                                                  .bodyMediumRegular))),
                                  SizedBox(height: 20.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 12.h),
                                      child: Text("lbl_password".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray80002)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.h),
                                      child: Obx(() => CustomTextFormField(
                                          controller:
                                              controller.passwordController,
                                          hintText:
                                              "msg_enter_your_password".tr,
                                          hintStyle: CustomTextStyles
                                              .titleSmallGray600,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          alignment: Alignment.center,
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  16.h, 16.v, 8.h, 16.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgBxlock,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 56.v),
                                          suffix: InkWell(
                                              onTap: () {
                                                controller
                                                        .isShowPassword.value =
                                                    !controller
                                                        .isShowPassword.value;
                                              },
                                              child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      30.h, 16.v, 16.h, 16.v),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMdieyeoutline,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize))),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 56.v),
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
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineGray))),
                                  SizedBox(height: 16.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 12.h),
                                      child: Text("msg_confirm_password2".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray80002)),
                                  SizedBox(height: 7.v),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.h),
                                      child: Obx(() => CustomTextFormField(
                                          controller: controller
                                              .confirmpasswordController,
                                          hintText:
                                              "msg_confirm_your_password".tr,
                                          hintStyle: CustomTextStyles
                                              .titleSmallGray600,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          alignment: Alignment.center,
                                          prefix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  16.h, 16.v, 8.h, 16.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgBxlock,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize)),
                                          prefixConstraints:
                                              BoxConstraints(maxHeight: 56.v),
                                          suffix: InkWell(
                                              onTap: () {
                                                controller
                                                        .isShowPassword1.value =
                                                    !controller
                                                        .isShowPassword1.value;
                                              },
                                              child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      30.h, 16.v, 16.h, 16.v),
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgMdieyeoutline,
                                                      height: 24.adaptSize,
                                                      width: 24.adaptSize))),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 56.v),
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
                                              controller.isShowPassword1.value,
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlineGray))),
                                  SizedBox(height: 36.v),
                                  CustomElevatedButton(
                                      text: "lbl_reset_password".tr,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 4.h),
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

  /// Navigates to the resetSuccessfulScreen when the action is triggered.
  onTapResetPassword() {
    Get.toNamed(
      AppRoutes.resetSuccessfulScreen,
    );
  }
}
