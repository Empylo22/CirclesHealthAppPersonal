import '../controller/subscription_controller.dart';
import '../models/frame10_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame10ItemWidget extends StatelessWidget {
  Frame10ItemWidget(
    this.frame10ItemModelObj, {
    Key? key,
    this.onTapSelectPlanButton,
  }) : super(
          key: key,
        );

  Frame10ItemModel frame10ItemModelObj;

  var controller = Get.find<SubscriptionController>();

  VoidCallback? onTapSelectPlanButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.outlineGray40019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 176.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              frame10ItemModelObj.proText!.value,
              style: CustomTextStyles.titleSmallLibreBaskerville,
            ),
          ),
          SizedBox(height: 8.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_99".tr,
                  style: CustomTextStyles.titleLargeLibreBaskervilleff000000,
                ),
                TextSpan(
                  text: "lbl_month".tr,
                  style: CustomTextStyles.labelLargeLibreBaskervilleff000000,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 23.v),
          CustomOutlinedButton(
            height: 40.v,
            width: 140.h,
            text: "lbl_select_plan".tr,
            buttonTextStyle: theme.textTheme.titleSmall!,
            onPressed: () {
              onTapSelectPlanButton!.call();
            },
          ),
        ],
      ),
    );
  }
}
