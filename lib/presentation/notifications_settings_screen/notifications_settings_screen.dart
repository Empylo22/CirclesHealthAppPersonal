import 'controller/notifications_settings_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class NotificationsSettingsScreen
    extends GetWidget<NotificationsSettingsController> {
  const NotificationsSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 4.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text("msg_notifications_settings".tr,
                              style:
                                  CustomTextStyles.titleMediumInterBlack900)),
                      SizedBox(height: 46.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("msg_message_notifications".tr,
                              style: CustomTextStyles.bodySmallBluegray400)),
                      _buildSoundSettings(),
                      SizedBox(height: 29.v),
                      Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("msg_group_notifications".tr,
                              style: CustomTextStyles.bodySmallBluegray400)),
                      _buildSoundSettings1(),
                      SizedBox(height: 45.v),
                      _buildShowPreview(),
                      SizedBox(height: 3.v),
                      Padding(
                          padding: EdgeInsets.only(left: 17.h),
                          child: Text("msg_preview_message".tr,
                              style: CustomTextStyles.bodySmallBluegray400)),
                      SizedBox(height: 40.v),
                      _buildResetAllNotifications(),
                      SizedBox(height: 3.v),
                      Container(
                          width: 306.h,
                          margin: EdgeInsets.only(left: 18.h, right: 40.h),
                          child: Text("msg_undo_all_custom".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallBluegray400)),
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
  Widget _buildSoundSettings() {
    return Container(
        height: 88.v,
        width: 361.h,
        margin: EdgeInsets.only(left: 2.h),
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
                  decoration: AppDecoration.outlineBluegray100011.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 50.v, bottom: 5.v),
                            child: Text("lbl_sound".tr,
                                style: theme.textTheme.bodyMedium)),
                        Obx(() => CustomSwitch(
                            margin: EdgeInsets.only(top: 44.v, right: 6.h),
                            value: controller.isSelectedSwitch.value,
                            onChange: (value) {
                              controller.isSelectedSwitch.value = value;
                            }))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 16.h, bottom: 44.v),
                  padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
                  decoration: AppDecoration.outlineBluegray10001,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
                            child: Text("msg_show_notifications".tr,
                                style: theme.textTheme.bodyMedium)),
                        Obx(() => CustomSwitch(
                            margin: EdgeInsets.only(right: 23.h),
                            value: controller.isSelectedSwitch1.value,
                            onChange: (value) {
                              controller.isSelectedSwitch1.value = value;
                            }))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildSoundSettings1() {
    return Container(
        height: 88.v,
        width: 361.h,
        margin: EdgeInsets.only(left: 2.h),
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(right: 1.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
                  decoration: AppDecoration.outlineBluegray100011.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 50.v, bottom: 5.v),
                            child: Text("lbl_sound".tr,
                                style: theme.textTheme.bodyMedium)),
                        Obx(() => CustomSwitch(
                            margin: EdgeInsets.only(top: 44.v, right: 6.h),
                            value: controller.isSelectedSwitch2.value,
                            onChange: (value) {
                              controller.isSelectedSwitch2.value = value;
                            }))
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                  margin: EdgeInsets.only(left: 16.h, bottom: 44.v),
                  padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
                  decoration: AppDecoration.outlineBluegray10001,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 5.v, bottom: 6.v),
                            child: Text("msg_show_notifications".tr,
                                style: theme.textTheme.bodyMedium)),
                        Obx(() => CustomSwitch(
                            margin: EdgeInsets.only(right: 23.h),
                            value: controller.isSelectedSwitch3.value,
                            onChange: (value) {
                              controller.isSelectedSwitch3.value = value;
                            }))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildShowPreview() {
    return Container(
        margin: EdgeInsets.only(left: 2.h, right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 6.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 5.v),
              child: Text("lbl_show_preview".tr,
                  style: CustomTextStyles.bodyMediumGray900_1)),
          Obx(() => CustomSwitch(
              margin: EdgeInsets.only(right: 8.h),
              value: controller.isSelectedSwitch4.value,
              onChange: (value) {
                controller.isSelectedSwitch4.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildResetAllNotifications() {
    return Container(
        width: 360.h,
        margin: EdgeInsets.only(left: 2.h, right: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Text("msg_reset_all_notifications".tr,
            style: CustomTextStyles.bodyMediumRed500));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
