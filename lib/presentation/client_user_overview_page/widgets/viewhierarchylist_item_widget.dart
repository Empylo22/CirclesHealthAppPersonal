import '../controller/client_user_overview_controller.dart';
import '../models/viewhierarchylist_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  ViewhierarchylistItemWidget(
    this.viewhierarchylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchylistItemModel viewhierarchylistItemModelObj;

  var controller = Get.find<ClientUserOverviewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineGray40019.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Obx(
                  () => Text(
                    viewhierarchylistItemModelObj
                        .workplaceRelationshipsText!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgNotification,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 31.h),
              ),
            ],
          ),
          SizedBox(height: 23.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Obx(
                  () => Text(
                    viewhierarchylistItemModelObj.completedText!.value,
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.v),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSignal,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Obx(
                  () => Text(
                    viewhierarchylistItemModelObj.gradeText!.value,
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
