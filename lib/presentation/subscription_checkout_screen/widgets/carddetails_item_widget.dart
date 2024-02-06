import '../controller/subscription_checkout_controller.dart';
import '../models/carddetails_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CarddetailsItemWidget extends StatelessWidget {
  CarddetailsItemWidget(
    this.carddetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CarddetailsItemModel carddetailsItemModelObj;

  var controller = Get.find<SubscriptionCheckoutController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.outlineGray40019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMastercardlogopngimage,
            height: 35.v,
            width: 52.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 10.v,
              bottom: 6.v,
            ),
            child: Obx(
              () => Text(
                carddetailsItemModelObj.cardEnding!.value,
                style: CustomTextStyles.titleSmallSwitzerVariable_1,
              ),
            ),
          ),
          Spacer(),
          Obx(
            () => CustomImageView(
              imagePath: carddetailsItemModelObj.checkmarkImage!.value,
              height: 36.adaptSize,
              width: 36.adaptSize,
            ),
          ),
        ],
      ),
    );
  }
}
