import 'controller/security_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class SecurityScreen extends GetWidget<SecurityController> {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 5.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("lbl_security".tr,
                          style: CustomTextStyles.titleMediumInterBlack900),
                      SizedBox(height: 28.v),
                      _buildSecurityNotificationsRow(),
                      SizedBox(height: 5.v),
                      Container(
                          width: 319.h,
                          margin: EdgeInsets.only(left: 14.h, right: 32.h),
                          child: Text("msg_get_notified_when".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray900)),
                      SizedBox(height: 31.v),
                      _buildTwoFactorAuthenticationRow(),
                      SizedBox(height: 6.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text("msg_2fa_is_an_identity".tr,
                              style: CustomTextStyles.bodySmallGray900)),
                      SizedBox(height: 33.v),
                      _buildFaceIdRow(),
                      SizedBox(height: 7.v),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("msg_face_id_lets_you".tr,
                              style: CustomTextStyles.bodySmallGray900)),
                      SizedBox(height: 32.v),
                      _buildDeleteMyAccountColumn(),
                      SizedBox(height: 5.v),
                      Container(
                          width: 246.h,
                          margin: EdgeInsets.only(left: 15.h),
                          child: Text("msg_deleting_your_account".tr,
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallGray900)),
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
  Widget _buildSecurityNotificationsRow() {
    return Container(
        margin: EdgeInsets.only(left: 3.h, right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 4.v),
              child: Text("msg_security_notifications".tr,
                  style: CustomTextStyles.bodyMediumGray900)),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(right: 12.h),
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildTwoFactorAuthenticationRow() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
              child: Text("lbl_2fa".tr,
                  style: CustomTextStyles.bodyMediumGray900)),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(right: 11.h),
              value: controller.isSelectedSwitch1.value,
              onChange: (value) {
                controller.isSelectedSwitch1.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildFaceIdRow() {
    return Container(
        margin: EdgeInsets.only(left: 3.h, right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 6.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
              child: Text("lbl_face_id".tr,
                  style: CustomTextStyles.bodyMediumGray900)),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(right: 11.h),
              value: controller.isSelectedSwitch2.value,
              onChange: (value) {
                controller.isSelectedSwitch2.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildDeleteMyAccountColumn() {
    return Container(
        width: 360.h,
        margin: EdgeInsets.only(left: 3.h, right: 2.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Text("msg_delete_my_account".tr,
                  style: CustomTextStyles.bodyMediumRed500)
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
