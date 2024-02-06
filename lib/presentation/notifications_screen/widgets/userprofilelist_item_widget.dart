import '../controller/notifications_controller.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<NotificationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlineTeal50.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder32,
      ),
      child: Row(
        children: [
          Container(
            height: 48.adaptSize,
            width: 48.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.teal100,
              borderRadius: BorderRadius.circular(
                24.h,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 9.v,
                bottom: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofilelistItemModelObj.titleText!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Obx(
                    () => Text(
                      userprofilelistItemModelObj.descriptionText!.value,
                      style: CustomTextStyles.bodySmallLight,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
