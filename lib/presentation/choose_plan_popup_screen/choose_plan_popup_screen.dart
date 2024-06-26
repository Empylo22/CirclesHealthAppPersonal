import 'controller/choose_plan_popup_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ChoosePlanPopupScreen extends GetWidget<ChoosePlanPopupController> {
  const ChoosePlanPopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: 244.h,
                padding: EdgeInsets.symmetric(horizontal: 39.h, vertical: 24.v),
                child: Column(children: [
                  SizedBox(height: 7.v),
                  Text("lbl_pro".tr,
                      style: CustomTextStyles.titleSmallLibreBaskerville),
                  SizedBox(height: 8.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_99".tr,
                            style: CustomTextStyles
                                .titleLargeLibreBaskervilleff000000),
                        TextSpan(
                            text: "lbl_month".tr,
                            style: CustomTextStyles
                                .labelLargeLibreBaskervilleff000000)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 23.v),
                  _buildFrameRow1(text: "msg_lorem_ipsum_dolor6".tr),
                  SizedBox(height: 11.v),
                  _buildFrameRow1(text: "msg_lorem_ipsum_dolor6".tr),
                  SizedBox(height: 11.v),
                  _buildFrameRow1(text: "msg_lorem_ipsum_dolor6".tr),
                  SizedBox(height: 11.v),
                  _buildFrameRow1(text: "msg_lorem_ipsum_dolor6".tr),
                  SizedBox(height: 11.v),
                  _buildFrameRow1(text: "msg_lorem_ipsum_dolor6".tr),
                  SizedBox(height: 11.v),
                  _buildFrameRow1(text: "msg_lorem_ipsum_dolor6".tr)
                ])),
            bottomNavigationBar: _buildSubscribeButton()));
  }

  /// Section Widget
  Widget _buildSubscribeButton() {
    return CustomElevatedButton(
        height: 40.v,
        width: 140.h,
        text: "lbl_subscribe".tr,
        margin: EdgeInsets.only(left: 52.h, right: 52.h, bottom: 33.v),
        buttonStyle: CustomButtonStyles.fillPrimary,
        buttonTextStyle: theme.textTheme.titleSmall!,
        onPressed: () {
          onTapSubscribeButton();
        });
  }

  /// Common widget
  Widget _buildFrameRow1({required String text}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgCheckmarkPrimary,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 8.h, bottom: 4.v),
          child: Text(text,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Navigates to the subscriptionCheckoutScreen when the action is triggered.
  onTapSubscribeButton() {
    Get.toNamed(
      AppRoutes.subscriptionCheckoutScreen,
    );
  }
}
