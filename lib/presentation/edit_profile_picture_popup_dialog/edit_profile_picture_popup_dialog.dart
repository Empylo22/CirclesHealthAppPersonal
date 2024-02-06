import 'controller/edit_profile_picture_popup_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

class EditProfilePicturePopupDialog extends StatelessWidget {
  EditProfilePicturePopupDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  EditProfilePicturePopupController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 119.v,
              bottom: 5.v,
            ),
            child: Text(
              "lbl_delete_photo".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIonTrashOutline,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 119.v,
              right: 7.h,
            ),
          ),
        ],
      ),
    );
  }
}
