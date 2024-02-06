import '../controller/home_personal_user_controller.dart';
import '../models/sleepqualitysection_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SleepqualitysectionItemWidget extends StatelessWidget {
  SleepqualitysectionItemWidget(
    this.sleepqualitysectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SleepqualitysectionItemModel sleepqualitysectionItemModelObj;

  var controller = Get.find<HomePersonalUserController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillOrange,
              child: CustomImageView(
                imagePath: sleepqualitysectionItemModelObj.icon!.value,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    sleepqualitysectionItemModelObj.title!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                SizedBox(height: 3.v),
                Obx(
                  () => Text(
                    sleepqualitysectionItemModelObj.subtitle!.value,
                    style: CustomTextStyles.bodySmallLight,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
