import 'controller/onboarding_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 39.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgPrimaryTurquoise,
                      height: 57.v,
                      width: 64.h),
                  SizedBox(height: 17.v),
                  Container(
                      width: 300.h,
                      margin: EdgeInsets.symmetric(horizontal: 36.h),
                      child: Text("msg_welcome_to_the_circles".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:
                              CustomTextStyles.headlineMediumSwitzerVariable)),
                  SizedBox(height: 23.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgFrame248,
                      height: 300.v,
                      width: 335.h,
                      alignment: Alignment.centerRight),
                  SizedBox(height: 33.v),
                  CustomElevatedButton(
                      text: "lbl_get_started".tr,
                      margin: EdgeInsets.only(left: 6.h, right: 7.h),
                      onPressed: () {
                        onTapGetStarted();
                      }),
                  SizedBox(height: 15.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtAlreadyhavean();
                      },
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_already".tr,
                                style: CustomTextStyles.titleSmallff191919),
                            TextSpan(
                                text: "msg_have_an_account".tr,
                                style: CustomTextStyles.titleSmallff191919),
                            TextSpan(
                                text: "lbl_sign_in".tr,
                                style: CustomTextStyles.titleSmallffffb347)
                          ]),
                          textAlign: TextAlign.left)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapGetStarted() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
