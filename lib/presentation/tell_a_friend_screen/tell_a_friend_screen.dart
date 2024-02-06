import 'controller/tell_a_friend_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TellAFriendScreen extends GetWidget<TellAFriendController> {
  const TellAFriendScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.teal50,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 46.v),
                child: Column(children: [
                  SizedBox(
                      height: 296.v,
                      width: 232.h,
                      child: Stack(alignment: Alignment.topCenter, children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                height: 260.v,
                                width: 232.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 26.v),
                                decoration: AppDecoration.fillWhiteA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgPngwing1,
                                    height: 207.adaptSize,
                                    width: 207.adaptSize,
                                    alignment: Alignment.center))),
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse4572x72,
                            height: 72.adaptSize,
                            width: 72.adaptSize,
                            radius: BorderRadius.circular(36.h),
                            alignment: Alignment.topCenter)
                      ])),
                  SizedBox(height: 35.v),
                  CustomElevatedButton(
                      width: 232.h,
                      text: "lbl_share_qr_code".tr,
                      buttonStyle: CustomButtonStyles.outlineBlueGrayTL20,
                      buttonTextStyle: CustomTextStyles.titleMediumInter),
                  SizedBox(height: 34.v),
                  _buildFrameStack(),
                  SizedBox(height: 16.v),
                  _buildFrameStack1(),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbuttonOne(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.fromLTRB(16.h, 8.v, 337.h, 8.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Section Widget
  Widget _buildFrameStack() {
    return Container(
        height: 44.v,
        width: 360.h,
        decoration: AppDecoration.outlineBluegray100012,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 40.v,
                  width: 360.h,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(20.h)))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 8.v),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgOcticonshare24,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 10.h, top: 2.v, bottom: 2.v),
                        child: Text("msg_share_invite_link".tr,
                            style: CustomTextStyles.bodyMediumPrimary))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildFrameStack1() {
    return Container(
        height: 44.v,
        width: 360.h,
        decoration: AppDecoration.outlineBluegray100012,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: 40.v,
                  width: 360.h,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(20.h)))),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 8.v),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgSolarCopyLinear,
                        height: 24.adaptSize,
                        width: 24.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 10.h, top: 4.v),
                        child: Text("lbl_copy_link".tr,
                            style: CustomTextStyles.bodyMediumPrimary))
                  ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
