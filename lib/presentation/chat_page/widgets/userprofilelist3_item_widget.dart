import '../controller/chat_controller.dart';
import '../models/userprofilelist3_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist3ItemWidget extends StatelessWidget {
  Userprofilelist3ItemWidget(
    this.userprofilelist3ItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  Userprofilelist3ItemModel userprofilelist3ItemModelObj;

  var controller = Get.find<ChatController>();

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 8.v,
          bottom: 7.v,
        ),
        decoration: AppDecoration.outlineBluegray10001,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => CustomImageView(
                imagePath: userprofilelist3ItemModelObj.userImage!.value,
                height: 48.adaptSize,
                width: 48.adaptSize,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofilelist3ItemModelObj.circle1Text!.value,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Obx(
                    () => Text(
                      userprofilelist3ItemModelObj.adeLoremIpsumText!.value,
                      style: CustomTextStyles.bodySmallBluegray40001Light,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 5.v,
                right: 2.h,
                bottom: 26.v,
              ),
              child: Obx(
                () => Text(
                  userprofilelist3ItemModelObj.amText!.value,
                  style: CustomTextStyles.bodySmallBluegray40012,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
