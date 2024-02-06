import 'controller/fa_code_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class FaCodeScreen extends GetWidget<FaCodeController> {
  const FaCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text("msg_2_step_verification".tr,
                              style:
                                  CustomTextStyles.titleMediumInterBlack900))),
                  SizedBox(height: 32.v),
                  CustomImageView(
                      imagePath: ImageConstant.img29859371,
                      height: 166.v,
                      width: 275.h),
                  SizedBox(height: 43.v),
                  Container(
                      width: 342.h,
                      margin: EdgeInsets.only(left: 11.h, right: 15.h),
                      child: Text("msg_a_text_message_with".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 35.v),
                  Text("msg_enter_4_digit_code".tr,
                      style: theme.textTheme.bodyMedium),
                  SizedBox(height: 8.v),
                  Padding(
                      padding: EdgeInsets.only(left: 42.h, right: 49.h),
                      child: Obx(() => CustomPinCodeTextField(
                          context: Get.context!,
                          controller: controller.otpController.value,
                          onChanged: (value) {}))),
                  SizedBox(height: 15.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_didn_t_receive_code2".tr,
                            style: CustomTextStyles.bodyMediumff000000),
                        TextSpan(
                            text: "lbl_resend".tr,
                            style: CustomTextStyles
                                .titleSmallSwitzerVariableff00a99d)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 46.v),
                  _buildFrame(),
                  SizedBox(height: 5.v)
                ]))));
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

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 13.v, bottom: 10.v),
              child: Text("lbl_step_2".tr,
                  style: CustomTextStyles.titleMediumInterPrimary)),
          CustomElevatedButton(
              height: 44.v,
              width: 94.h,
              text: "lbl_verify".tr,
              buttonStyle: CustomButtonStyles.outlineBlueGrayTL20,
              buttonTextStyle:
                  CustomTextStyles.titleSmallSwitzerVariableWhiteA700)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
