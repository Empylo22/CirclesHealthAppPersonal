import 'controller/on_1_call_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_image.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:empylo/widgets/app_bar/appbar_title_image.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class On1CallScreen extends GetWidget<On1CallController> {
  const On1CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.teal50,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 9.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse31100x100,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(50.h)),
                  SizedBox(height: 7.v),
                  Text("lbl_chioma".tr,
                      style: CustomTextStyles.titleLargeSwitzerVariableGray900),
                  Text("lbl_1_59".tr,
                      style: CustomTextStyles
                          .headlineSmallSwitzerVariableOnPrimary),
                  Spacer(flex: 71),
                  _buildCallActions(),
                  Spacer(flex: 28)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 32.h, top: 19.v, bottom: 21.v),
            onTap: () {
              onTapIconNavArrow();
            }),
        centerTitle: true,
        title: Row(children: [
          AppbarTitleImage(
              imagePath: ImageConstant.imgTeenyiconsLockSolid,
              margin: EdgeInsets.only(bottom: 1.v)),
          AppbarSubtitleSix(
              text: "msg_end_to_end_encrypted".tr,
              margin: EdgeInsets.only(left: 4.h, top: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildCallActions() {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 12.h),
                  child: CustomIconButton(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: IconButtonStyleHelper.outlineGrayTL34,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgVaadinMute)))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: CustomIconButton(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      padding: EdgeInsets.all(19.h),
                      decoration: IconButtonStyleHelper.outlineGrayTL34,
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgFluentSpeaker224Filled)))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: CustomIconButton(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      padding: EdgeInsets.all(17.h),
                      decoration: IconButtonStyleHelper.outlineGrayTL34,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPhHandPalmBold)))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: CustomIconButton(
                      height: 68.adaptSize,
                      width: 68.adaptSize,
                      padding: EdgeInsets.all(13.h),
                      decoration: IconButtonStyleHelper.outlineGrayTL34,
                      onTap: () {
                        onTapBtnIconButton();
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFluentCallEnd32Filled))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapIconNavArrow() {
    Get.back();
  }

  /// Navigates to the chatMessageScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.chatMessageScreen,
    );
  }
}
