import 'controller/chat_group_message_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_image.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:empylo/widgets/app_bar/appbar_title_image.dart';
import 'package:empylo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatGroupMessageScreen extends GetWidget<ChatGroupMessageController> {
  const ChatGroupMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse3124x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                radius: BorderRadius.circular(12.h),
                                margin: EdgeInsets.only(bottom: 23.v)),
                            CustomElevatedButton(
                                height: 36.v,
                                width: 152.h,
                                text: "msg_lorem_ipsum_dolor4".tr,
                                margin: EdgeInsets.only(top: 11.v),
                                buttonStyle: CustomButtonStyles.fillOnError,
                                buttonTextStyle:
                                    CustomTextStyles.bodyMediumWhiteA700)
                          ]),
                      _buildTime(),
                      SizedBox(height: 6.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 194.h,
                              margin: EdgeInsets.only(left: 167.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14.h, vertical: 6.v),
                              decoration: AppDecoration.fillTeal.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 5.v),
                                    Container(
                                        width: 135.h,
                                        margin: EdgeInsets.only(right: 30.h),
                                        child: Text("msg_lorem_ipsum_dolor2".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumGray900))
                                  ]))),
                      _buildLoremIpsumDolor(),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text("lbl_12_53pm".tr,
                              style:
                                  CustomTextStyles.bodySmallBluegray40001_1)),
                      SizedBox(height: 21.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse2724x24,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                radius: BorderRadius.circular(12.h),
                                margin: EdgeInsets.only(bottom: 40.v)),
                            Container(
                                margin: EdgeInsets.only(left: 1.h, top: 10.v),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 17.h, vertical: 7.v),
                                decoration: AppDecoration.fillOnError.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderBL20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.v),
                                      SizedBox(
                                          width: 170.h,
                                          child: Text(
                                              "msg_lorem_ipsum_dolor2".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumWhiteA700))
                                    ]))
                          ]),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text("lbl_12_58pm".tr,
                              style: CustomTextStyles.bodySmallBluegray40001_1))
                    ])),
            bottomNavigationBar: _buildThree()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 64.v,
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 32.h, top: 25.v, bottom: 24.v),
            onTap: () {
              onTapIconNavArrow();
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 33.h),
            child: Row(children: [
              AppbarTitleImage(imagePath: ImageConstant.imgUserBlueGray10001),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, bottom: 2.v),
                  child: Column(children: [
                    AppbarSubtitleOne(
                        text: "lbl_circle_1".tr,
                        margin: EdgeInsets.only(right: 9.h)),
                    AppbarSubtitleThree(text: "lbl_5_members".tr)
                  ]))
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMaterialSymbolsCallSharp,
              margin: EdgeInsets.all(16.h),
              onTap: () {
                onTapImage();
              })
        ],
        styleType: Style.bgOutline_1);
  }

  /// Section Widget
  Widget _buildTime() {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse2924x24,
          height: 24.adaptSize,
          width: 24.adaptSize,
          radius: BorderRadius.circular(12.h),
          margin: EdgeInsets.only(top: 68.v, bottom: 56.v)),
      Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: EdgeInsets.only(right: 1.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 56.v),
                      child: Text("lbl_12_50pm".tr,
                          style: CustomTextStyles.bodySmallBluegray40001_1)),
                  Container(
                      margin: EdgeInsets.only(top: 12.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.h, vertical: 9.v),
                      decoration: AppDecoration.fillTeal.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL20),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 1.v),
                            SizedBox(
                                width: 135.h,
                                child: Text("msg_lorem_ipsum_dolor2".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodyMediumGray900))
                          ]))
                ])),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 9.v),
                  padding:
                      EdgeInsets.symmetric(horizontal: 17.h, vertical: 7.v),
                  decoration: AppDecoration.fillOnError.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderBL20),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.v),
                        SizedBox(
                            width: 170.h,
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumWhiteA700))
                      ])),
              Padding(
                  padding: EdgeInsets.only(bottom: 49.v),
                  child: Text("lbl_12_50pm".tr,
                      style: CustomTextStyles.bodySmallBluegray40001_1))
            ]),
        Text("lbl_12_52pm".tr, style: CustomTextStyles.bodySmallBluegray40001_1)
      ]))
    ]);
  }

  /// Section Widget
  Widget _buildLoremIpsumDolor() {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse3024x24,
          height: 24.adaptSize,
          width: 24.adaptSize,
          radius: BorderRadius.circular(12.h),
          margin: EdgeInsets.only(top: 12.v, bottom: 94.v)),
      Container(
          margin: EdgeInsets.only(left: 1.h, top: 22.v),
          padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 5.v),
          decoration: AppDecoration.fillOnError
              .copyWith(borderRadius: BorderRadiusStyle.customBorderBL20),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 3.v),
                SizedBox(
                    width: 170.h,
                    child: Text("msg_lorem_ipsum_dolor5".tr,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumWhiteA700))
              ])),
      Spacer(),
      Padding(
          padding: EdgeInsets.only(bottom: 116.v),
          child: Text("lbl_12_53pm".tr,
              style: CustomTextStyles.bodySmallBluegray40001_1))
    ]);
  }

  /// Section Widget
  Widget _buildThree() {
    return Container(
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 45.v),
        decoration: AppDecoration.outlineGray300,
        child: CustomTextFormField(
            controller: controller.messageController,
            hintText: "lbl_your_message2".tr,
            hintStyle: CustomTextStyles.bodyMediumGray80001Regular,
            textInputAction: TextInputAction.done,
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 4.v, 4.h, 4.v),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(14.h)),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMenu,
                    height: 28.adaptSize,
                    width: 28.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 36.v),
            contentPadding:
                EdgeInsets.only(left: 13.h, top: 8.v, bottom: 8.v)));
  }

  /// Navigates to the previous screen.
  onTapIconNavArrow() {
    Get.back();
  }

  /// Navigates to the huddleScreen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.huddleScreen,
    );
  }
}
