import '../controller/circles_view_controller.dart';
import '../models/userprofilelist4_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist4ItemWidget extends StatelessWidget {
  Userprofilelist4ItemWidget(
    this.userprofilelist4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist4ItemModel userprofilelist4ItemModelObj;

  var controller = Get.find<CirclesViewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineTeal50.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder32,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofilelist4ItemModelObj.adminImage!.value,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(bottom: 2.v),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 7.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofilelist4ItemModelObj.userName!.value,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Obx(
                  () => Text(
                    userprofilelist4ItemModelObj.score!.value,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            width: 40.h,
            margin: EdgeInsets.only(
              top: 13.v,
              bottom: 15.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Obx(
              () => Text(
                userprofilelist4ItemModelObj.adminName!.value,
                style: CustomTextStyles.bodySmallPrimary_1,
              ),
            ),
          ),
          Container(
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.fromLTRB(7.h, 14.v, 12.h, 16.v),
            decoration: BoxDecoration(
              color: appTheme.lightGreenA700,
              borderRadius: BorderRadius.circular(
                10.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
