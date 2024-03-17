import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

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
      width: 391.v,
      height: 290.h,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(children: [
        Row(children: [ 
          CustomImageView(
              imagePath: ImageConstant.imgEllipse3,
              height: 72.adaptSize,
              width: 72.adaptSize,
              margin: EdgeInsets.only(
                top: 14.v,
                right: 16.h,
              )),
          SizedBox( 
            width: 12.v,
          ),
          Text(
            'Edit Profile Picture',
            style: TextStyle(
                fontSize: 16.0,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500),
          )
        ]),
        Container(
          decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.v,
                      bottom: 5.v,
                      left: 10.h
                    ),
                    child: Text(
                      "lbl_use_avatar".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      
                    },
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPhsmileylight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(
                        top: 8.v,
                        right: 7.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.h,),
              Divider(height: 1.h,),
              Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 5.v,
                left: 10.h
              ),
              child: Text(
                "lbl_take_photo".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgBiCamera,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 8.v,
                  right: 7.h,
                  bottom: 8.v
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h,),
              Divider(height: 1.h,),
              Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 5.v,
                left: 10.h
              ),
              child: Text(
                "lbl_choose_photo".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgClarityPictureLine,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 8.v,
                  right: 7.h,
                  bottom: 8.v
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h,),
              Divider(height: 1.h,),
              Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 8.v,
                bottom: 5.v,
                left: 10.h
              ),
              child: Text(
                "lbl_delete_photo".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            GestureDetector(
              onTap: () {
                
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgIonTrashOutline,
                height: 24.adaptSize,
                width: 24.adaptSize,
                margin: EdgeInsets.only(
                  top: 8.v,
                  right: 7.h,
                  bottom: 8.v
                ),
              ),
            ),
          ],
        ),
            ],
          ),
          
        ),
        
      ]),
    );
  }
}
