import 'controller/profile_account_controller.dart';
import 'models/profile_account_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileAccountPage extends StatelessWidget {
  ProfileAccountPage({Key? key}) : super(key: key);

  ProfileAccountController controller =
      Get.put(ProfileAccountController(ProfileAccountModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  SizedBox(height: 28.v),
                  _buildChangeProfilePhoto()
                ]))));
  }

  /// Section Widget
  Widget _buildChangeProfilePhoto() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          CustomTextFormField(
              controller: controller.changeProfilePhotoController,
              hintText: "msg_change_profile_photo".tr,
              hintStyle: CustomTextStyles.bodyMediumPrimary,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 8.v, 10.h, 8.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSolargalleryeditbold,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 40.v),
              contentPadding:
                  EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA),
          SizedBox(height: 23.v),
          SizedBox(
              height: 120.v,
              width: 361.h,
              child: Stack(alignment: Alignment.topRight, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        margin: EdgeInsets.only(right: 1.h),
                        padding: EdgeInsets.symmetric(
                            horizontal: 7.h, vertical: 8.v),
                        decoration: AppDecoration.outlineBluegray100011
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder20),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 2.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapFrame();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 9.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgMdiBellNotification,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h,
                                                top: 2.v,
                                                bottom: 2.v),
                                            child: Text("lbl_notifications".tr,
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ]))),
                              SizedBox(height: 15.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapFrame1();
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgMdiAccountCog,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 10.h,
                                                top: 2.v,
                                                bottom: 2.v),
                                            child: Text(
                                                "msg_personal_information".tr,
                                                style:
                                                    theme.textTheme.bodyMedium))
                                      ]))),
                              SizedBox(height: 15.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: _buildClarityHeartSolid(
                                      clarityHeartSolid:
                                          ImageConstant.imgMajesticonsLock,
                                      tellAFriend: "lbl_security".tr,
                                      onTapArrowRight: () {
                                        onTapArrowRight();
                                      }))
                            ]))),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        height: 40.v,
                        width: 311.h,
                        padding: EdgeInsets.fromLTRB(8.h, 12.v, 8.h, 11.v),
                        decoration: AppDecoration.outlineBluegray10001,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            alignment: Alignment.centerRight))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 40.v,
                        width: 311.h,
                        padding: EdgeInsets.fromLTRB(8.h, 10.v, 8.h, 9.v),
                        decoration: AppDecoration.outlineBluegray10001,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 16.adaptSize,
                            width: 16.adaptSize,
                            alignment: Alignment.topRight)))
              ])),
          SizedBox(height: 13.v),
          Container(
              decoration: AppDecoration.outlineBluegray100011
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                        height: 40.v,
                        width: 342.h,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: 40.v,
                                  width: 311.h,
                                  padding:
                                      EdgeInsets.fromLTRB(8.h, 12.v, 8.h, 11.v),
                                  decoration:
                                      AppDecoration.outlineBluegray10001,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowRight,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      alignment: Alignment.centerRight))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgStreamlineSubs,
                                    height: 22.adaptSize,
                                    width: 22.adaptSize),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 10.h, top: 3.v),
                                    child: Text("msg_subscription_plan".tr,
                                        style: theme.textTheme.bodyMedium))
                              ]))
                        ]))),
                SizedBox(
                    height: 40.v,
                    width: 343.h,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapFiftySeven();
                              },
                              child: Container(
                                  height: 40.v,
                                  width: 311.h,
                                  padding:
                                      EdgeInsets.fromLTRB(8.h, 11.v, 8.h, 10.v),
                                  decoration:
                                      AppDecoration.outlineBluegray10001,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowRight,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                      alignment: Alignment.topRight)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(children: [
                            CustomImageView(
                                imagePath:
                                    ImageConstant.imgAkarIconsQuestionFill,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h, top: 4.v),
                                child: Text("lbl_my_circles_faq".tr,
                                    style: theme.textTheme.bodyMedium))
                          ]))
                    ])),
                SizedBox(height: 8.v),
                Padding(
                    padding: EdgeInsets.only(left: 18.h, right: 8.h),
                    child: _buildClarityHeartSolid(
                        clarityHeartSolid: ImageConstant.imgClarityHeartSolid,
                        tellAFriend: "lbl_tell_a_friend".tr,
                        onTapArrowRight: () {
                          onTapArrowRight1();
                        })),
                SizedBox(height: 8.v)
              ])),
          SizedBox(height: 13.v),
          CustomTextFormField(
              controller: controller.logoutController,
              hintText: "lbl_log_out".tr,
              hintStyle: CustomTextStyles.bodyMediumRed500,
              textInputAction: TextInputAction.done,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 8.v, 10.h, 8.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSolargalleryeditboldRed500,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 40.v),
              contentPadding:
                  EdgeInsets.only(top: 10.v, right: 30.h, bottom: 10.v),
              borderDecoration: TextFormFieldStyleHelper.fillWhiteA)
        ]));
  }

  /// Common widget
  Widget _buildClarityHeartSolid({
    required String clarityHeartSolid,
    required String tellAFriend,
    Function? onTapArrowRight,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: clarityHeartSolid,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 10.h, top: 2.v, bottom: 2.v),
          child: Text(tellAFriend,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black900))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 16.adaptSize,
          width: 16.adaptSize,
          margin: EdgeInsets.only(top: 3.v, bottom: 5.v),
          onTap: () {
            onTapArrowRight!.call();
          })
    ]);
  }

  /// Navigates to the notificationsSettingsScreen when the action is triggered.
  onTapFrame() {
    Get.toNamed(
      AppRoutes.notificationsSettingsScreen,
    );
  }

  /// Navigates to the personalInformationScreen when the action is triggered.
  onTapFrame1() {
    Get.toNamed(
      AppRoutes.personalInformationScreen,
    );
  }

  /// Navigates to the securityScreen when the action is triggered.
  onTapArrowRight() {
    Get.toNamed(
      AppRoutes.securityScreen,
    );
  }

  /// Navigates to the myCirclesFaqScreen when the action is triggered.
  onTapFiftySeven() {
    Get.toNamed(
      AppRoutes.myCirclesFaqScreen,
    );
  }

  /// Navigates to the tellAFriendScreen when the action is triggered.
  onTapArrowRight1() {
    Get.toNamed(
      AppRoutes.tellAFriendScreen,
    );
  }
}
