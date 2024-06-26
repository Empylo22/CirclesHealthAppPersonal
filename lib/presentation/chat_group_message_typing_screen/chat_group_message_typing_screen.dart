import 'controller/chat_group_message_typing_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_image.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:empylo/widgets/app_bar/appbar_title_image.dart';
import 'package:empylo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatGroupMessageTypingScreen
    extends GetWidget<ChatGroupMessageTypingController> {
  const ChatGroupMessageTypingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildLoremIpsumDolorStack(),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 40.h),
                            child: Text("lbl_12_52pm".tr,
                                style:
                                    CustomTextStyles.bodySmallBluegray40001_1)),
                        SizedBox(height: 2.v),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                width: 194.h,
                                margin:
                                    EdgeInsets.only(left: 183.h, right: 16.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 14.h, vertical: 6.v),
                                decoration: AppDecoration.fillTeal.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderTL20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 5.v),
                                      Container(
                                          width: 135.h,
                                          margin: EdgeInsets.only(right: 30.h),
                                          child: Text(
                                              "msg_lorem_ipsum_dolor2".tr,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .bodyMediumGray900))
                                    ]))),
                        _buildLoremIpsumDolorRow(),
                        Padding(
                            padding: EdgeInsets.only(left: 41.h),
                            child: Text("lbl_12_53pm".tr,
                                style:
                                    CustomTextStyles.bodySmallBluegray40001_1)),
                        SizedBox(height: 21.v),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgEllipse2724x24,
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      radius: BorderRadius.circular(12.h),
                                      margin: EdgeInsets.only(bottom: 40.v)),
                                  Container(
                                      margin:
                                          EdgeInsets.only(left: 1.h, top: 10.v),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 17.h, vertical: 7.v),
                                      decoration: AppDecoration.fillOnError
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderBL20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SizedBox(height: 1.v),
                                            SizedBox(
                                                width: 170.h,
                                                child: Text(
                                                    "msg_lorem_ipsum_dolor2".tr,
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumWhiteA700))
                                          ]))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 41.h),
                            child: Text("lbl_12_58pm".tr,
                                style:
                                    CustomTextStyles.bodySmallBluegray40001_1)),
                        SizedBox(height: 4.v),
                        _buildMessagesSendFieldRow(),
                        SizedBox(height: 5.v)
                      ])
                ]))));
  }

  /// Section Widget
  Widget _buildLoremIpsumDolorStack() {
    return SizedBox(
        height: 104.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  margin: EdgeInsets.only(left: 40.h, right: 137.h),
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
                        Container(
                            width: 170.h,
                            margin: EdgeInsets.only(right: 10.h),
                            child: Text("msg_lorem_ipsum_dolor2".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMediumWhiteA700))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgEllipse2924x24,
              height: 24.adaptSize,
              width: 24.adaptSize,
              radius: BorderRadius.circular(12.h),
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15.h, top: 38.v)),
          CustomAppBar(
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
                    AppbarTitleImage(
                        imagePath: ImageConstant.imgUserBlueGray10001),
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
              styleType: Style.bgOutline_1)
        ]));
  }

  /// Section Widget
  Widget _buildLoremIpsumDolorRow() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgEllipse3024x24,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      radius: BorderRadius.circular(12.h),
                      margin: EdgeInsets.only(top: 12.v, bottom: 94.v)),
                  Container(
                      margin: EdgeInsets.only(left: 1.h, top: 22.v),
                      padding:
                          EdgeInsets.symmetric(horizontal: 17.h, vertical: 5.v),
                      decoration: AppDecoration.fillOnError.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL20),
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
                                    style:
                                        CustomTextStyles.bodyMediumWhiteA700))
                          ])),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(bottom: 116.v),
                      child: Text("lbl_12_53pm".tr,
                          style: CustomTextStyles.bodySmallBluegray40001_1))
                ])));
  }

  /// Section Widget
  Widget _buildMessagesSendFieldRow() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 4.v),
        decoration: AppDecoration.fillWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  child: CustomTextFormField(
                      controller: controller.messagesSendFieldController,
                      textInputAction: TextInputAction.done,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlineGrayTL16))),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: CustomIconButton(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  child: CustomImageView(imagePath: ImageConstant.imgSave)))
        ]));
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
