import 'controller/create_new_circle_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/core/utils/validation_functions.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class CreateNewCircleScreen extends GetWidget<CreateNewCircleController> {
  CreateNewCircleScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.h, vertical: 8.v),
                            child: Column(children: [
                              SizedBox(
                                  height: 118.v,
                                  width: 110.h,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgEllipse46106x106,
                                            height: 106.adaptSize,
                                            width: 106.adaptSize,
                                            radius: BorderRadius.circular(53.h),
                                            alignment: Alignment.topLeft),
                                        CustomIconButton(
                                            height: 36.adaptSize,
                                            width: 36.adaptSize,
                                            padding: EdgeInsets.all(10.h),
                                            decoration:
                                                IconButtonStyleHelper.fillTeal,
                                            alignment: Alignment.bottomRight,
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgUser))
                                      ])),
                              SizedBox(height: 31.v),
                              _buildNameEditText(),
                              SizedBox(height: 31.v),
                              _buildDescriptionEditText(),
                              SizedBox(height: 31.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Row(children: [
                                        Text("msg_add_participants".tr,
                                            style: theme.textTheme.bodyLarge),
                                        Padding(
                                            padding: EdgeInsets.only(left: 6.h),
                                            child: Text("lbl_0_5".tr,
                                                style: CustomTextStyles
                                                    .bodyLargeLight))
                                      ]))),
                              SizedBox(height: 11.v),
                              _buildAddNameOrNumberButton(),
                              SizedBox(height: 20.v),
                              _buildShareInviteLinkEditText(),
                              SizedBox(height: 57.v),
                              _buildCreateCircleButton(),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(
            text: "lbl_new_circle".tr,
            margin: EdgeInsets.only(top: 30.v, bottom: 3.v)));
  }

  /// Section Widget
  Widget _buildNameEditText() {
    return CustomTextFormField(
        controller: controller.nameEditTextController,
        hintText: "lbl_circle_name".tr,
        hintStyle: CustomTextStyles.bodyMediumBluegray400,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 10.v, 13.h, 10.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgPepiconspencilpen,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 44.v),
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.only(left: 15.h, top: 12.v, bottom: 12.v));
  }

  /// Section Widget
  Widget _buildDescriptionEditText() {
    return CustomTextFormField(
        controller: controller.descriptionEditTextController,
        hintText: "msg_circle_description".tr,
        hintStyle: CustomTextStyles.bodyMediumBluegray400,
        maxLines: 6,
        contentPadding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 14.v));
  }

  /// Section Widget
  Widget _buildAddNameOrNumberButton() {
    return CustomElevatedButton(
        height: 40.v,
        text: "msg_add_name_or_number".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 10.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgIcroundadd,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: CustomTextStyles.bodyMediumPrimary);
  }

  /// Section Widget
  Widget _buildShareInviteLinkEditText() {
    return CustomTextFormField(
        controller: controller.shareInviteLinkEditTextController,
        hintText: "msg_share_invite_link".tr,
        hintStyle: CustomTextStyles.bodyMediumPrimary,
        textInputAction: TextInputAction.done,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(16.h, 8.v, 10.h, 12.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgOcticonshare24,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 44.v),
        contentPadding: EdgeInsets.only(top: 12.v, right: 30.h, bottom: 12.v),
        borderDecoration: TextFormFieldStyleHelper.outlineBlueGray,
        filled: false);
  }

  /// Section Widget
  Widget _buildCreateCircleButton() {
    return CustomElevatedButton(text: "lbl_create_circle".tr);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
