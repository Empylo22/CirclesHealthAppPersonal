import '../edit_profile_picture_popup_dialog/controller/edit_profile_picture_popup_controller.dart';
import '../edit_profile_picture_popup_dialog/edit_profile_picture_popup_dialog.dart';
import 'controller/profile_setup_client_user_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/core/utils/validation_functions.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_drop_down.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfileSetupClientUserScreen
    extends GetWidget<ProfileSetupClientUserController> {
  ProfileSetupClientUserScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 5.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_profile_setup".tr,
                                      style: CustomTextStyles
                                          .titleMediumInterBlack900))),
                          SizedBox(height: 7.v),
                          SizedBox(
                              height: 106.v,
                              width: 110.h,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEllipse45,
                                        height: 106.adaptSize,
                                        width: 106.adaptSize,
                                        radius: BorderRadius.circular(53.h),
                                        alignment: Alignment.centerLeft),
                                    CustomIconButton(
                                        height: 36.adaptSize,
                                        width: 36.adaptSize,
                                        onTap: () {
                                          onTapBtnUser();
                                        },
                                        padding: EdgeInsets.all(10.h),
                                        decoration:
                                            IconButtonStyleHelper.fillTeal,
                                        alignment: Alignment.bottomRight,
                                        child: CustomImageView(
                                            imagePath: ImageConstant.imgUser))
                                  ])),
                          SizedBox(height: 31.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_name".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 3.v),
                          _buildFrame(),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_age_range".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 2.v),
                          CustomDropDown(
                              icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowup,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize)),
                              hintText: "lbl_select".tr,
                              items: controller.profileSetupClientUserModelObj
                                  .value.dropdownItemList.value,
                              onChanged: (value) {
                                controller.onSelected(value);
                              }),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_ethnicity".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 2.v),
                          CustomDropDown(
                              icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowup,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize)),
                              hintText: "lbl_select".tr,
                              items: controller.profileSetupClientUserModelObj
                                  .value.dropdownItemList1.value,
                              onChanged: (value) {
                                controller.onSelected1(value);
                              }),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_sexuality".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 2.v),
                          CustomDropDown(
                              icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowup,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize)),
                              hintText: "lbl_select".tr,
                              items: controller.profileSetupClientUserModelObj
                                  .value.dropdownItemList2.value,
                              onChanged: (value) {
                                controller.onSelected2(value);
                              }),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_disability".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 2.v),
                          CustomDropDown(
                              icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowup,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize)),
                              hintText: "lbl_select".tr,
                              items: controller.profileSetupClientUserModelObj
                                  .value.dropdownItemList3.value,
                              onChanged: (value) {
                                controller.onSelected3(value);
                              }),
                          SizedBox(height: 16.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_marital_status".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 3.v),
                          CustomDropDown(
                              icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowup,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize)),
                              hintText: "lbl_select".tr,
                              items: controller.profileSetupClientUserModelObj
                                  .value.dropdownItemList4.value,
                              onChanged: (value) {
                                controller.onSelected4(value);
                              }),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_department".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 2.v),
                          CustomDropDown(
                              icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowup,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize)),
                              hintText: "lbl_select".tr,
                              items: controller.profileSetupClientUserModelObj
                                  .value.dropdownItemList5.value,
                              onChanged: (value) {
                                controller.onSelected5(value);
                              }),
                          SizedBox(height: 16.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 1.h),
                                  child: Text("lbl_job_role".tr,
                                      style: theme.textTheme.labelLarge))),
                          SizedBox(height: 3.v),
                          CustomDropDown(
                              icon: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgArrowup,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize)),
                              hintText: "lbl_select".tr,
                              items: controller.profileSetupClientUserModelObj
                                  .value.dropdownItemList6.value,
                              onChanged: (value) {
                                controller.onSelected6(value);
                              }),
                          SizedBox(height: 40.v),
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
                              })
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(left: 19.h, top: 9.h),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  onTap: () {
                    onTapArrowLeft();
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftBlack900))),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: CustomTextFormField(
                      controller: controller.nameController,
                      hintText: "lbl_first_name".tr,
                      hintStyle: CustomTextStyles.bodySmallBluegray40001,
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 13.v)))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: CustomTextFormField(
                      controller: controller.lastNameController,
                      hintText: "lbl_last_name".tr,
                      hintStyle: CustomTextStyles.bodySmallBluegray40001,
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (!isText(value)) {
                          return "err_msg_please_enter_valid_text".tr;
                        }
                        return null;
                      },
                      contentPadding: EdgeInsets.all(13.h))))
        ]));
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
    // Get.toNamed(
    //   AppRoutes.dailyAssessmentDefaultScreen,
    // );
  }
}
