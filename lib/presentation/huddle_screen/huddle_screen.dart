import 'controller/huddle_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_image.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_six.dart';
import 'package:empylo/widgets/app_bar/appbar_title_image.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HuddleScreen extends GetWidget<HuddleController> {
  const HuddleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.teal50,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 5.v),
                child: Column(children: [
                  Text("lbl_circle_1".tr,
                      style: CustomTextStyles.titleLargeSwitzerVariableGray900),
                  SizedBox(height: 3.v),
                  Text("lbl_2_30".tr,
                      style: CustomTextStyles
                          .headlineSmallSwitzerVariableOnPrimary),
                  SizedBox(height: 44.v),
                  _buildCircleCounterView(),
                  SizedBox(height: 41.v),
                  Padding(
                      padding: EdgeInsets.only(left: 50.h, right: 55.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: 100.v,
                                width: 101.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: 100.adaptSize,
                                              width: 100.adaptSize,
                                              decoration: BoxDecoration(
                                                  color: appTheme.blueGray10001,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.h)))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse31100x100,
                                          height: 100.adaptSize,
                                          width: 100.adaptSize,
                                          radius: BorderRadius.circular(50.h),
                                          alignment: Alignment.center)
                                    ])),
                            Container(
                                height: 100.adaptSize,
                                width: 100.adaptSize,
                                margin: EdgeInsets.only(left: 51.h),
                                decoration: AppDecoration.fillBluegray10001
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder50),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgEllipse4100x100,
                                    height: 100.adaptSize,
                                    width: 100.adaptSize,
                                    radius: BorderRadius.circular(50.h),
                                    alignment: Alignment.center))
                          ])),
                  SizedBox(height: 89.v),
                  _buildHuddleSeventyThree(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft();
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
  Widget _buildCircleCounterView() {
    return Padding(
        padding: EdgeInsets.only(left: 14.h, right: 18.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  margin: EdgeInsets.only(top: 87.v),
                  decoration: AppDecoration.fillBluegray10001
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder50),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse30100x100,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(50.h),
                      alignment: Alignment.center)),
              Container(
                  height: 100.v,
                  width: 101.h,
                  margin: EdgeInsets.only(left: 15.h, bottom: 87.v),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            height: 100.adaptSize,
                            width: 100.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray10001,
                                borderRadius: BorderRadius.circular(50.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgEllipse27100x100,
                        height: 100.adaptSize,
                        width: 100.adaptSize,
                        radius: BorderRadius.circular(50.h),
                        alignment: Alignment.center)
                  ])),
              Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  margin: EdgeInsets.only(left: 9.h, top: 87.v),
                  decoration: AppDecoration.fillBluegray10001
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder50),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse29100x100,
                      height: 100.adaptSize,
                      width: 100.adaptSize,
                      radius: BorderRadius.circular(50.h),
                      alignment: Alignment.center))
            ]));
  }

  /// Section Widget
  Widget _buildHuddleSeventyThree() {
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
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the chatGroupMessageScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.chatGroupMessageScreen,
    );
  }
}
