import 'package:shared_preferences/shared_preferences.dart';

import 'controller/reset_code_popup_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class ResetCodePopupScreen extends GetWidget<ResetCodePopupController> {
  const ResetCodePopupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: Center(
              child: Container(
                  width: 359.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 27.h, vertical: 24.v),
                  child: Column(children: [
                    Text("lbl_code".tr, style: theme.textTheme.headlineSmall),
                    SizedBox(height: 13.v),
                    SizedBox(
                        width: 303.h,
                        child: Text("msg_please_enter_the".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium)),
                    SizedBox(height: 26.v),
                    Padding(
                        padding: EdgeInsets.only(left: 13.h, right: 12.h),
                        child: Obx(() => CustomPinCodeTextField(
                            context: Get.context!,
                            controller: controller.otpController.value,
                            onChanged: (value) {}))),
                    SizedBox(height: 26.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_didn_t_receive_code2".tr,
                              style: CustomTextStyles.bodyMediumff000000),
                          TextSpan(
                              text: "lbl_resend".tr,
                              style: CustomTextStyles
                                  .titleSmallSwitzerVariableff00a99d)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 26.v),
                    CustomElevatedButton(
                        text: "lbl_verify".tr,
                        onPressed: () {
                          onTapVerify();
                        }),
                    SizedBox(height: 5.v)
                  ])),
            )));
  }

  /// Navigates to the resetPasswordScreen when the action is triggered.
  onTapVerify() async {
    // Retrieve OTP from the controller
    String otp = controller.otpController.value.text;
    // Save OTP to shared preferences
    await saveOtp(otp);
    print(otp);
    Get.toNamed(
      AppRoutes.resetPasswordScreen,
    );
  }

  /// Save OTP to shared preferences
}
