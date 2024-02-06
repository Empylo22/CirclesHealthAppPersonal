import '../controller/client_user_overview_one_controller.dart';
import '../models/healthmanagementcomponent_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HealthmanagementcomponentItemWidget extends StatelessWidget {
  HealthmanagementcomponentItemWidget(
    this.healthmanagementcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  HealthmanagementcomponentItemModel healthmanagementcomponentItemModelObj;

  var controller = Get.find<ClientUserOverviewOneController>();

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
              imagePath: healthmanagementcomponentItemModelObj
                  .healthManagementImage!.value,
              height: 157.v,
              width: 179.h,
              radius: BorderRadius.circular(
                10.h,
              ),
              margin: EdgeInsets.only(left: 1.h),
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Obx(
              () => Text(
                healthmanagementcomponentItemModelObj
                    .healthManagementText!.value,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              children: [
                SizedBox(
                  width: 77.h,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCalendarBlueGray900,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Obx(
                          () => Text(
                            healthmanagementcomponentItemModelObj
                                .calendarText!.value,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 58.h,
                  margin: EdgeInsets.only(left: 44.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClockBlueGray900,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Obx(
                          () => Text(
                            healthmanagementcomponentItemModelObj
                                .clockText!.value,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
        ],
      ),
    );
  }
}
