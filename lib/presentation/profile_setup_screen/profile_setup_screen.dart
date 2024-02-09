import '../edit_profile_picture_popup_dialog/controller/edit_profile_picture_popup_controller.dart';
import '../edit_profile_picture_popup_dialog/edit_profile_picture_popup_dialog.dart';
import 'controller/profile_setup_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_drop_down.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileSetupScreen extends GetWidget<ProfileSetupController> {
  const ProfileSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_profile_setup".tr,
                              style:
                                  CustomTextStyles.titleMediumInterBlack900))),
                  SizedBox(height: 7.v),
                  SizedBox(
                      height: 106.v,
                      width: 110.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse45,
                            height: 106.adaptSize,
                            width: 106.adaptSize,
                            radius: BorderRadius.circular(53.h),
                            alignment: Alignment.centerLeft),
                        CustomIconButton(
                            onTap: () {
                              onTapBtnUser();
                            },
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillTeal,
                            alignment: Alignment.bottomRight,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgUser))
                      ])),
                  SizedBox(height: 31.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_name".tr,
                              style: theme.textTheme.labelLarge))),
                  CustomTextFormField(
                      controller: controller.pepiconspencilpenController,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 13.v, 12.h, 7.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPepiconspencilpen,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 44.v)),
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_date_of_birth".tr,
                              style: theme.textTheme.labelLarge))),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: controller.dateofbirthController,
                    textInputAction: TextInputAction.done,
                    hintText: "lbl_mm_dd_yyyy".tr,
                    hintStyle: CustomTextStyles.titleSmallBluegray400,
                    prefix: Container(
                        margin: EdgeInsets.fromLTRB(15.h, 10.v, 5.h, 10.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUilcalender,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 44.v),
                    suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 13.v, 12.h, 7.v),
                        child: CustomImageView(
                            //imagePath: ImageConstant.imgPepiconspencilpen,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    //suffixConstraints: BoxConstraints(maxHeight: 44.v)
                  ),
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_gender".tr,
                              style: theme.textTheme.labelLarge))),
                  SizedBox(height: 2.v),
                  CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowup,
                              height: 32.adaptSize,
                              width: 32.adaptSize)),
                      hintText: "Select your Gender".tr,
                      hintStyle: CustomTextStyles.titleSmallBluegray400,
                      items: controller.profileSetupModelObj.value
                          .genderDropdownItemList!.value,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(15.h, 10.v, 5.h, 10.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFrame257,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 44.v),
                      contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                      onChanged: (value) {
                        controller.onSelected(value);
                      }),
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("lbl_location".tr,
                              style: theme.textTheme.labelLarge))),
                  SizedBox(height: 2.v),
                  _buildFourteen(),
                  SizedBox(height: 42.v),
                  CustomElevatedButton(
                      text: "lbl_save_continue".tr,
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowleft,
                              height: 20.v,
                              width: 24.h)),
                      onPressed: () {
                        onTapSaveContinue();
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.fromLTRB(16.h, 8.v, 337.h, 8.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  /// Section Widget
  Widget _buildNineteen() {
    return Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 9.v),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBxlock,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 3.h)),
          CustomImageView(
              imagePath: ImageConstant.imgPepiconspencilpen,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Common widget
  Widget _buildFourteen() {
    return CustomDropDown(
        icon: Container(
            margin: EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowup,
                height: 32.adaptSize,
                width: 32.adaptSize)),
        items: controller
            .locationSetupModelObj.value.locationDropdownItemList!.value,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 10.v, 5.h, 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgFrame258,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 44.v),
        contentPadding: EdgeInsets.symmetric(vertical: 13.v),
        onChanged: (value) {
          controller.onSelected(value);
        });
  }

  /// Displays a dialog with the [EditProfilePicturePopupDialog] content.
  onTapBtnUser() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: EditProfilePicturePopupDialog(
        Get.put(
          EditProfilePicturePopupController(),
        ),
      ),
    ));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the dailyAssessmentDefaultScreen when the action is triggered.
  onTapSaveContinue() {
    Get.toNamed(
      AppRoutes.dailyAssessmentDefaultScreen,
    );
  }
}
