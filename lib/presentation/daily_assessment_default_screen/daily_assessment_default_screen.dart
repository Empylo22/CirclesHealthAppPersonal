import 'controller/daily_assessment_default_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:empylo/widgets/app_bar/appbar_trailing_button.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class DailyAssessmentDefaultScreen
    extends GetWidget<DailyAssessmentDefaultController> {
  const DailyAssessmentDefaultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.teal50,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 32.h, vertical: 15.v),
                child: Column(children: [
                  SizedBox(
                      width: 229.h,
                      child: Text("msg_do_you_feel_loved".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineMedium)),
                  SizedBox(height: 93.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup7,
                      height: 188.v,
                      width: 182.h),
                  Spacer(),
                  SizedBox(height: 76.v),
                  _buildBottom()
                ])),
            bottomNavigationBar: _buildContinue()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 8.v),
            onTap: () {
              onTapArrowLeft();
            }),
        title: AppbarSubtitleTwo(
            text: "lbl_assessment".tr, margin: EdgeInsets.only(left: 21.h)),
        actions: [
          AppbarTrailingButton(
              margin: EdgeInsets.symmetric(horizontal: 17.h, vertical: 12.v))
        ]);
  }

  /// Section Widget
  Widget _buildBottom() {
    return SizedBox(
        height: 48.v,
        width: 328.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 16.v,
                  width: 328.h,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray10001,
                      borderRadius: BorderRadius.circular(8.h)))),
          CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.centerLeft,
              child: CustomImageView(imagePath: ImageConstant.imgFrameOnerror))
        ]));
  }

  /// Section Widget
  Widget _buildContinue() {
    return CustomElevatedButton(
        onPressed: () {
          onTapContinueButton();
        },
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 56.v),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowleft,
                height: 20.v,
                width: 24.h)),
        buttonStyle: CustomButtonStyles.outlineBlueGrayTL28);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}

onTapContinueButton() {
  Get.toNamed(
    AppRoutes.homePersonalUserContainerScreen,
  );
}
