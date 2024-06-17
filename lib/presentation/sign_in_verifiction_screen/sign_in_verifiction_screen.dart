import 'package:empylo/widgets/custom_icon_button.dart';
import 'controller/sign_in_verifiction_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:empylo/data/models/verifyUserAuth/post_verify_user_auth_req.dart';
import 'package:empylo/data/models/verifyUserAuth/post_verify_user_auth_resp.dart';

class SignInVerifictionScreen extends GetWidget<SignInVerifictionController> {
  const SignInVerifictionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_enter_your_verification".tr,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 31.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgEmail55689971,
                      height: 120.adaptSize,
                      width: 120.adaptSize),
                  SizedBox(height: 44.v),
                  Padding(
                      padding: EdgeInsets.only(left: 9.h, right: 10.h),
                      child: Obx(() => CustomPinCodeTextField(
                          context: Get.context!,
                          controller: controller.otpController.value,
                          onChanged: (value) {}))),
                  SizedBox(height: 24.v),
                  Container(
                      width: 307.h,
                      margin: EdgeInsets.only(left: 25.h, right: 27.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_we_sent_a_four_digit2".tr,
                                style: CustomTextStyles.bodyMediumff000000),
                            TextSpan(
                                text: "msg_jane_gmail_com".tr,
                                style: CustomTextStyles
                                    .titleSmallSwitzerVariableff00a99d),
                            TextSpan(
                                text: "lbl2".tr,
                                style: CustomTextStyles
                                    .titleSmallSwitzerVariableff191919)
                          ]),
                          textAlign: TextAlign.center)),
                  SizedBox(height: 71.v),
                  CustomElevatedButton(
                      text: "lbl_verify".tr,
                      onPressed: () {
                        onTapVerify();
                      }),
                  SizedBox(height: 26.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "msg_didn_t_receive_code2".tr,
                            style: CustomTextStyles.bodyMediumff000000),
                        TextSpan(
                            text: "lbl_resend".tr,
                            style: CustomTextStyles
                                .titleSmallSwitzerVariableff00a99dSemiBold)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 19.h, top: 9.h),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  onTap: () {
                    onTapArrowLeft();
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftBlack900))),
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// calls the [https://empylo-app.vercel.app/auth/user/verify] API
  ///
  /// It has [PostVerifyUserAuthReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onVerifyAccountSuccess()` function.
  /// If the call fails, the function calls the `_onVerifyAccountError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> onTapVerify() async {
    PostVerifyUserAuthReq postVerifyUserAuthReq = PostVerifyUserAuthReq(
      otp: controller.otpController.value.text,
    );
    try {
      await controller.callVerifyUserAuth(
        postVerifyUserAuthReq.toJson(),
      );
      _onVerifyAccountSuccess();
    } on PostVerifyUserAuthResp {
      _onVerifyAccountError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  Future<void> _onVerifyAccountSuccess() async {
    Get.rawSnackbar(message: "Your Account has been created successfully");
    Get.toNamed(AppRoutes.signInScreen);
  }

  void _onVerifyAccountError() {
    Get.rawSnackbar(message: "Invalid Code, Please check properly");
  }
}
