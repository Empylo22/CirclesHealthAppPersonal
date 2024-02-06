import '../notifications_screen/widgets/userprofilelist_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 9.v),
                child: Column(children: [
                  SizedBox(height: 5.v),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Padding(
                              padding: EdgeInsets.only(right: 4.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: CustomIconButton(
                                            height: 40.adaptSize,
                                            width: 40.adaptSize,
                                            padding: EdgeInsets.all(12.h),
                                            onTap: () {
                                              onTapBtnArrowLeft();
                                            },
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrowLeftBlack900))),
                                    _buildNotificationsRow(),
                                    SizedBox(height: 11.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text("lbl_today".tr,
                                            style: CustomTextStyles
                                                .titleMediumInterBlack900)),
                                    SizedBox(height: 9.v),
                                    _buildUserProfileList()
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildNotificationsRow() {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 15.v, bottom: 18.v),
                  child: Text("lbl_notifications".tr,
                      style: theme.textTheme.headlineSmall)),
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse3,
                  height: 64.adaptSize,
                  width: 64.adaptSize,
                  radius: BorderRadius.circular(32.h))
            ]));
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 9.v);
                },
                itemCount: controller.notificationsModelObj.value
                    .userprofilelistItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofilelistItemModel model = controller
                      .notificationsModelObj
                      .value
                      .userprofilelistItemList
                      .value[index];
                  return UserprofilelistItemWidget(model);
                }))));
  }

  /// Navigates to the previous screen.
  onTapBtnArrowLeft() {
    Get.back();
  }
}
