import 'dart:io';

import 'package:empylo/data/models/updateSignUpProfile/post_update_signup_req.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/utils/validation_functions.dart';
import '../../data/models/updateSignUpProfile/post_update_signup_resp.dart';
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
  ProfileSetupScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v),
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
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
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
                    _buildFrame(),
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
                  ])),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            //iconHeight: 40.adaptsize,
            //iconWidth: 40.adaptsize,
            margin: EdgeInsets.fromLTRB(16.h, 8.v, 337.h, 8.v),
            onTap: () {
              onTapArrowLeft();
            }));
  }

  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: CustomTextFormField(
                      controller: controller.pepiconspencilpenController,
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
                      controller: controller.lastnameController,
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
  onTapBtnUser()async{
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      File file = File(pickedFile.path);
      controller.onProfilePictureChange(file);
    }
    Get.dialog(AlertDialog(
      
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: EditProfilePicturePopupDialog(
        Get.put(
          EditProfilePicturePopupController(
            onProfilePictureChange: controller.onProfilePictureChange,
          //   onProfilePictureChange: (file) {
          //  if (file != null) {
          //     controller.onProfilePictureChange(file);}
          // },
          ),
        ),
      ),
    ));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the dailyAssessmentDefaultScreen when the action is triggered.
  Future<void> onTapSaveContinue() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Get the selected profile picture file from the controller
      File? profilePictureFile = controller.selectedProfilePicture;

      if (profilePictureFile == null) {
        // Handle case where no profile picture is selected
        // Optionally, you can show a message to the user
        Get.rawSnackbar(
          message: 'Please choose a valid Image',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red
        );
      }
        // Creates an instance of UpdateProfileRequest
        PostUpdateSignUpProfileRequest data =
            await PostUpdateSignUpProfileRequest.getInstance();

        // data.firstName = controller.pepiconspencilpenController.text;
        // data.DOB = controller.dateofbirthController.text;
        // data.gender = controller.selectedGender;
        // data.address = controller.selectedLocation as String?;
        // data.accountType = await PostUpdateSignUpProfileRequest.getAccountType();
        // //data.filename = await uploadProfilePicture(profilePictureFile);
        // // Updates account type based on user interaction
        
        await PostUpdateSignUpProfileRequest.updateAccountType('personalUser');

        // Create an instance of File by picking the file
      final pickedFile = controller.selectedProfilePicture;

      if (pickedFile != null) {
        File file = File(pickedFile.path);

        // Call the method to update the signup profile
        await controller.callUpdateSignupProfile(file);

        // Navigate to the next screen
        _onUpdateProfileSuccess();
      } else {
        // Handle case where no file is selected
        print('No file selected.');
      }
        // Navigate to the next screen
        _onUpdateProfileSuccess();
      } on PostUpdateSignupProfileResp {
        _onUpdateProfileError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        // Handles generic errors
      }
    }
  }

  void _onUpdateProfileSuccess() {
    Get.toNamed(AppRoutes.dailyAssessmentDefaultScreen);
    print("Update Profile Success");
  }

  void _onUpdateProfileError() {
    Get.defaultDialog(
      onConfirm: () => Get.back(),
      title: 'Error',
      backgroundColor: Color(0xFFF4F4F4),
      middleText: 'Failed to update profile. Please try again.',
    );
  }
  // onTapSaveContinue() {
  //   Get.toNamed(
  //     AppRoutes.dailyAssessmentDefaultScreen,
  //   );
  // }
}
