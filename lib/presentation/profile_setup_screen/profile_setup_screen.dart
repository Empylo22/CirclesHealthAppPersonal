import 'dart:io';
import 'package:empylo/data/models/updateSignUpProfile/post_update_signup_req.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/utils/validation_functions.dart';
import '../../data/models/updateSignUpProfile/post_update_signup_resp.dart';
import 'controller/profile_setup_controller.dart';
import 'package:empylo/core/app_export.dart';
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
                              imagePath:
                                  controller.selectedProfilePicture?.path ??
                                      ImageConstant.imgEllipse45,
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
                      validator: (value) {
                        return value != null
                            ? null
                            : 'Please enter your date of birth';
                      },
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
                        validator: (value) {
                          return value != null
                              ? null
                              : 'Please select your gender';
                        },
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

  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(right: 4.h),
                  child: CustomTextFormField(
                      autofocus: false,
                      controller: controller.pepiconspencilpenController,
                      hintText: "lbl_first_name".tr,
                      hintStyle: CustomTextStyles.bodySmallBluegray40001,
                      validator: (value) {
                        if (!isText(value, isRequired: true)) {
                          return "Please enter your firstname".tr;
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
                        if (!isText(value, isRequired: true)) {
                          return "Please enter your lastname".tr;
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
        validator: (value) {
          return value != null ? null : 'Please select your location';
        },
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

  onTapBtnUser() async {
    await ImagePicker()
        .pickImage(source: ImageSource.gallery)
        .then((value) async {
      if (value != null) {
        controller.selectedProfilePicture = File(value.path);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('filename', value.path);
        ('File picked and saved: ${value.path}');
//controller.selectedProfilePicture!(value.path);
      }
    });
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
        // Handles case where no profile picture is selected
        Get.rawSnackbar(
          message: 'Please choose a valid Image',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
        );
        return;
      }

      // Create an instance of PostUpdateSignUpProfileRequest with all required fields
      final requestData = {
        'firstName': controller.pepiconspencilpenController.text,
        'lastName': controller.lastnameController.text,
        'DOB': controller.dateofbirthController.text,
        'gender': controller.selectedGender,
        'address': controller.selectedLocation,
        'accountType': await PostUpdateSignUpProfileRequest.getAccountType(),
        // Add other fields as required
      };

      // Call the method to update the signup profile
      await controller.callUpdateSignupProfile(profilePictureFile);

      // Navigate to the next screen
      _onUpdateProfileSuccess();
    } catch (e) {
      _onUpdateProfileError();
    }
  }
}


  void _onUpdateProfileSuccess() {
    Get.rawSnackbar(
        message: 'Profile Updated Successfully',
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.green);
    Get.toNamed(AppRoutes.homePersonalUserContainerScreen);
    print("Update Profile Success");
  }

  void _onUpdateProfileError() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Save the captured values in SharedPreferences
    await prefs.setString(
        'firstName', controller.pepiconspencilpenController.text);
    await prefs.setString('lastName', controller.lastnameController.text);
    await prefs.setString('Gender', controller.selectedGender);
    await prefs.setString('Location', controller.selectedLocation);

    // Show the error dialog
    Get.defaultDialog(
      title: 'Error',
      backgroundColor: Color(0xFFF4F4F4),
      middleText: 'Failed to update profile. Please try again.',
      actions: [
        TextButton(
          onPressed: () {
            // Navigate to the home screen
            Get.toNamed(AppRoutes.homePersonalUserContainerScreen);
            print("Profile details not updated yet");
          },
          child: Text('Update Profile Later'),
        ),
      ],
    );
  }

  // onTapSaveContinue() {
  //   Get.toNamed(
  //     AppRoutes.dailyAssessmentDefaultScreen,
  //   );
  // }
}
