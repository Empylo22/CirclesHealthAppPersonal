import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/edit_profile_picture_popup_controller.dart';
import 'package:empylo/core/app_export.dart';

class EditProfilePicturePopupDialog extends StatelessWidget {
  final EditProfilePicturePopupController controller;

  EditProfilePicturePopupDialog(this.controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 391.v,
      height: 290.h,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Obx(() {
                return CustomImageView(
                  imagePath: controller.selectedImage.value != null
                      ? controller.selectedImage.value!.path
                      : ImageConstant.imgEllipse3,
                  height: 72.adaptSize,
                  width: 72.adaptSize,
                  margin: EdgeInsets.only(
                    top: 14.v,
                    right: 16.h,
                  ),
                );
              }),
              SizedBox(width: 12.v),
              Text(
                'Edit Profile Picture',
                style: TextStyle(
                  fontSize: 16.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(height: 12.v),
          _buildButton("Use Avatar", ImageConstant.imgPhsmileylight, () {
            // Add logic to use avatar
          }),
          _buildButton("Take Photo", ImageConstant.imgBiCamera, () {
            // Add logic to take photo
          }),
          _buildButton("Choose Photo", ImageConstant.imgClarityPictureLine, () {
            // Call pickFile function here
            controller.pickFile();
          }),
          _buildButton("Delete Photo", ImageConstant.imgIonTrashOutline, () {
            // Add logic to delete photo
          }),
        ],
      ),
    );
  }

  Widget _buildButton(String label, String iconPath, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v, horizontal: 10.h),
            child: Text(
              label.tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: iconPath,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 8.v,
              right: 7.h,
              bottom: 8.v,
            ),
          ),
        ],
      ),
    );
  }
}
