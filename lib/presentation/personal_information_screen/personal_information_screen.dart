import 'controller/personal_information_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_drop_down.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PersonalInformationScreen
    extends GetWidget<PersonalInformationController> {
  const PersonalInformationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 3.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("msg_personal_information2".tr,
                          style: CustomTextStyles.titleMediumInterBlack900)),
                  SizedBox(height: 26.v),
                  SizedBox(
                      height: 106.v,
                      width: 110.h,
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgEllipse45106x106,
                            height: 106.adaptSize,
                            width: 106.adaptSize,
                            radius: BorderRadius.circular(53.h),
                            alignment: Alignment.centerLeft),
                        CustomIconButton(
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.fillWhiteATL18,
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
                      controller: controller.janevalueController,
                      hintText: "lbl_jane".tr,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 13.v, 12.h, 7.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgPepiconspencilpen,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      suffixConstraints: BoxConstraints(maxHeight: 44.v),
                      contentPadding:
                          EdgeInsets.only(left: 15.h, top: 13.v, bottom: 13.v)),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_password".tr,
                              style: theme.textTheme.labelLarge))),
                  SizedBox(height: 2.v),
                  _buildFortyNine(),
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_date_of_birth".tr,
                              style: theme.textTheme.labelLarge))),
                  SizedBox(height: 3.v),
                  CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowup,
                              height: 32.adaptSize,
                              width: 32.adaptSize)),
                      hintText: "lbl_dec_25_2001".tr,
                      items: controller.personalInformationModelObj.value
                          .dropdownItemList!.value,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(15.h, 10.v, 5.h, 10.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgUilcalender,
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
                      hintText: "lbl_female".tr,
                      items: controller.personalInformationModelObj.value
                          .dropdownItemList1!.value,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(15.h, 10.v, 5.h, 10.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFrame257,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 44.v),
                      contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                      onChanged: (value) {
                        controller.onSelected1(value);
                      }),
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("lbl_location".tr,
                              style: theme.textTheme.labelLarge))),
                  SizedBox(height: 2.v),
                  CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 6.v, 8.h, 6.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowup,
                              height: 32.adaptSize,
                              width: 32.adaptSize)),
                      hintText: "lbl_nigeria".tr,
                      items: controller.personalInformationModelObj.value
                          .dropdownItemList2!.value,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(16.h, 10.v, 5.h, 10.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgFrame258,
                              height: 24.adaptSize,
                              width: 24.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 44.v),
                      contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                      onChanged: (value) {
                        controller.onSelected2(value);
                      }),
                  SizedBox(height: 47.v),
                  CustomElevatedButton(
                      text: "lbl_save_changes".tr,
                      onPressed: () {
                        onTapSaveChanges();
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
  Widget _buildFortyNine() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
        decoration: AppDecoration.outlineTeal
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgBxlock,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 3.h, top: 2.v, bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 5.h, top: 1.v),
              child: Text("lbl".tr,
                  style: CustomTextStyles.titleLargeSwitzerVariableOnPrimary)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgPepiconspencilpen,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 2.v))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }

  /// Navigates to the profileAccountTabContainerScreen when the action is triggered.
  onTapSaveChanges() {
    Get.toNamed(
      AppRoutes.profileAccountTabContainerScreen,
    );
  }
}
