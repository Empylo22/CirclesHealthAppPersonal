import 'controller/reset_successful_controller.dart';import 'package:empylo/core/app_export.dart';import 'package:empylo/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';class ResetSuccessfulScreen extends GetWidget<ResetSuccessfulController> {const ResetSuccessfulScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.whiteA700, body: Container(width: 359.h, padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 37.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgImageProcessin, height: 177.v, width: 160.h), SizedBox(height: 1.v), Text("msg_your_password_has".tr, style: theme.textTheme.titleSmall), SizedBox(height: 29.v), CustomElevatedButton(text: "lbl_continue".tr, rightIcon: Container(margin: EdgeInsets.only(left: 16.h), child: CustomImageView(imagePath: ImageConstant.imgArrowleft, height: 20.v, width: 24.h)), onPressed: () {onTapContinue();}), SizedBox(height: 5.v)])))); } 
/// Navigates to the profileSetupScreen when the action is triggered.
onTapContinue() { Get.toNamed(AppRoutes.profileSetupScreen, ); } 
 }
