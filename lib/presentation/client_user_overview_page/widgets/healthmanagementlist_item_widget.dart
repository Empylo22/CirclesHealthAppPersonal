import '../controller/client_user_overview_controller.dart';
import '../models/healthmanagementlist_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HealthmanagementlistItemWidget extends StatelessWidget {
  HealthmanagementlistItemWidget(
    this.healthmanagementlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HealthmanagementlistItemModel healthmanagementlistItemModelObj;

  var controller = Get.find<ClientUserOverviewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineGray40019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 200.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath:
                  healthmanagementlistItemModelObj.healthManagementImage!.value,
              height: 157.v,
              width: 179.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(left: 1.h),
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Obx(
              () => Text(
                healthmanagementlistItemModelObj.healthManagementText!.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Obx(
                    () => Text(
                      healthmanagementlistItemModelObj.completedText!.value,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
        ],
      ),
    );
  }
}
