import 'controller/subscription_successful_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SubscriptionSuccessfulScreen
    extends GetWidget<SubscriptionSuccessfulController> {
  const SubscriptionSuccessfulScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: 359.h,
          padding: EdgeInsets.symmetric(
            horizontal: 27.h,
            vertical: 57.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              CustomImageView(
                imagePath: ImageConstant.imgImageProcessin127x136,
                height: 127.v,
                width: 136.h,
              ),
              SizedBox(height: 28.v),
              Text(
                "msg_subscription_successful".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "lbl_continue".tr,
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowleft,
                    height: 20.v,
                    width: 24.h,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
