import '../../data/models/updateSignUpProfile/post_update_signup_req.dart';
import 'controller/sign_up_user_selection_one_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SignUpUserSelectionOneScreen
    extends GetWidget<SignUpUserSelectionOneController> {
  const SignUpUserSelectionOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgIntersect,
                      height: 225.v,
                      width: 393.h),
                  SizedBox(height: 19.v),
                  Text("lbl_sign_up4".tr, style: theme.textTheme.headlineLarge),
                  SizedBox(height: 29.v),
                  Text("msg_please_select_user".tr,
                      style: CustomTextStyles.bodyMediumOnPrimaryRegular),
                  SizedBox(height: 20.v),
                  GestureDetector(
                    onTap: () async {
                      await PostUpdateSignUpProfileRequest.updateAccountType(
                          'clientUser');
                      //controller.updateUserType('clientUser');
                      Get.toNamed(AppRoutes.signUpUserSelectionScreen);
                    },
                    child: CustomIconButton(
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        padding: EdgeInsets.all(12.h),
                        decoration:
                            IconButtonStyleHelper.outlineSecondaryContainer,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgMdiAccount)),
                  ),
                  SizedBox(height: 3.v),
                  Text("lbl_personal_user".tr,
                      style: CustomTextStyles.bodySmallSecondaryContainer),
                  SizedBox(height: 32.v),
                  Container(
                      height: 80.adaptSize,
                      width: 80.adaptSize,
                      padding: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 15.v),
                      decoration: AppDecoration.outlineBlueGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder40),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgThumbsUp,
                          height: 48.adaptSize,
                          width: 48.adaptSize,
                          alignment: Alignment.centerRight)),
                  SizedBox(height: 3.v),
                  Text("lbl_client_user".tr,
                      style: CustomTextStyles.titleSmallSwitzerVariablePrimary),
                  SizedBox(height: 47.v),
                  CustomElevatedButton(
                      text: "lbl_continue".tr,
                      margin: EdgeInsets.only(left: 20.h, right: 21.h),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowleft,
                              height: 20.v,
                              width: 24.h)),
                      onPressed: () {
                        onTapContinue();
                      }),
                  SizedBox(height: 25.v),
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

  /// Navigates to the profileSetupClientUserScreen when the action is triggered.
  onTapContinue() {
    Get.toNamed(
      AppRoutes.profileSetupClientUserScreen,
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.signInScreen,
    );
  }
}
