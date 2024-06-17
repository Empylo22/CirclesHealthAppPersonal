import 'controller/daily_assessment_four_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:empylo/widgets/app_bar/appbar_trailing_button.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class DailyAssessmentFourScreen
    extends GetWidget<DailyAssessmentFourController> {
  const DailyAssessmentFourScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 55.v),
                  Text("lbl_kind_of".tr,
                      style: CustomTextStyles.titleMediumBlack900Medium),
                  SizedBox(height: 15.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup3,
                      height: 188.v,
                      width: 182.h),
                  Spacer(),
                  SizedBox(height: 76.v),
                  Slider(
                      value: 0.0, min: 0.0, max: 100.0, onChanged: (value) {})
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
  Widget _buildContinue() {
    return CustomElevatedButton(
        text: "lbl_continue".tr,
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 56.v),
        rightIcon: Container(
            margin: EdgeInsets.only(left: 16.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowleft,
                height: 20.v,
                width: 24.h)),
        onPressed: () {
          onTapContinue();
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the homePersonalUserContainerScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.homePersonalUserContainerScreen,
    );
  }
}
