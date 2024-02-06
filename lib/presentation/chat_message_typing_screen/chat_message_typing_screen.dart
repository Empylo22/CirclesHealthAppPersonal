import 'controller/chat_message_typing_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_image.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:empylo/widgets/app_bar/appbar_title_image.dart';
import 'package:empylo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatMessageTypingScreen extends GetWidget<ChatMessageTypingController> {
  const ChatMessageTypingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 34.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomElevatedButton(
                          height: 36.v,
                          width: 125.h,
                          text: "lbl_hi_i_m_chioma".tr,
                          margin: EdgeInsets.only(left: 16.h),
                          buttonStyle: CustomButtonStyles.fillOnError,
                          buttonTextStyle:
                              CustomTextStyles.bodyMediumWhiteA700),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: _buildFrame(time: "lbl_12_50pm".tr)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(left: 188.h, right: 16.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 7.v),
                              decoration: AppDecoration.fillTeal.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL20),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 3.v),
                                    SizedBox(
                                        width: 167.h,
                                        child: Text("msg_hey_there_it_s".tr,
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumGray900))
                                  ]))),
                      Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrame(time: "lbl_12_50pm".tr)),
                      Container(
                          width: 216.h,
                          margin: EdgeInsets.only(left: 16.h, right: 161.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 17.h, vertical: 5.v),
                          decoration: AppDecoration.fillOnError.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                Container(
                                    width: 173.h,
                                    margin: EdgeInsets.only(right: 7.h),
                                    child: Text(
                                        "msg_loved_your_presentation".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumWhiteA700))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: _buildFrame(time: "lbl_12_52pm".tr)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: 194.h,
                              margin: EdgeInsets.only(left: 183.h, right: 16.h),
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
                      Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: _buildFrame(time: "lbl_12_53pm".tr)),
                      SizedBox(height: 63.v),
                      _buildThirtySix(),
                      SizedBox(height: 5.v)
                    ]))));
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
                    AppbarSubtitleOne(text: "lbl_chioma".tr),
                    AppbarSubtitleFour(
                        text: "lbl_online".tr,
                        margin: EdgeInsets.only(right: 20.h))
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
        styleType: Style.bgOutline);
  }

  /// Section Widget
  Widget _buildThirtySix() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 4.v),
        decoration: AppDecoration.fillWhiteA,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v),
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

  /// Common widget
  Widget _buildFrame({required String time}) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      CustomImageView(
          imagePath: ImageConstant.imgSolarCheckReadLinearOnerror,
          height: 16.adaptSize,
          width: 16.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 1.h, top: 2.v),
          child: Text(time,
              style: CustomTextStyles.bodySmallBluegray40001_1
                  .copyWith(color: appTheme.blueGray40001)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapIconNavArrow() {
    Get.back();
  }

  /// Navigates to the on1CallScreen when the action is triggered.
  onTapImage() {
    Get.toNamed(
      AppRoutes.on1CallScreen,
    );
  }
}
