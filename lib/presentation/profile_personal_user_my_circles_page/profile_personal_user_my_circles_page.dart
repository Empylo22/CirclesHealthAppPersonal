import 'controller/profile_personal_user_my_circles_controller.dart';
import 'models/profile_personal_user_my_circles_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:empylo/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ProfilePersonalUserMyCirclesPage extends StatelessWidget {
  ProfilePersonalUserMyCirclesPage({Key? key}) : super(key: key);

  ProfilePersonalUserMyCirclesController controller = Get.put(
      ProfilePersonalUserMyCirclesController(
          ProfilePersonalUserMyCirclesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 28.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Column(children: [
                        CustomTextFormField(
                            controller: controller.mingcuteaddlineController,
                            hintText: "msg_create_new_circle".tr,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(16.h, 8.v, 10.h, 8.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgMingcuteaddline,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            prefixConstraints: BoxConstraints(maxHeight: 40.v),
                            contentPadding: EdgeInsets.only(
                                top: 11.v, right: 30.h, bottom: 11.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillWhiteA),
                        SizedBox(height: 20.v),
                        _buildFrame(),
                        SizedBox(height: 13.v),
                        _buildFrame5()
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 16.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_circle_1".tr,
                      style: CustomTextStyles.titleMediumBlack900_1)),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("msg_circle_s_wellbeing".tr,
                      style: theme.textTheme.titleSmall)),
              SizedBox(height: 1.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_members_5".tr,
                      style: CustomTextStyles.bodySmallLight)),
              SizedBox(height: 1.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("msg_activity_level".tr,
                      style: CustomTextStyles.bodySmallLight)),
              SizedBox(height: 18.v),
              Container(
                  height: 46.v,
                  width: 342.h,
                  margin: EdgeInsets.only(left: 5.h),
                  child: Stack(alignment: Alignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUnion,
                        height: 16.v,
                        width: 342.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 8.v)),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: EdgeInsets.only(left: 35.h, right: 18.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 46.v,
                                      width: 57.h,
                                      child: Stack(
                                          alignment: Alignment.centerRight,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    right: 25.h),
                                                child: _buildFrameSixtyEight(
                                                    userName: "lbl_ade".tr)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.h),
                                                child: _buildFrameSixtyEight(
                                                    userName: "lbl_mary".tr))
                                          ])),
                                  Spacer(flex: 47),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse31,
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            radius:
                                                BorderRadius.circular(16.h)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_chioma".tr,
                                                style:
                                                    theme.textTheme.bodySmall))
                                      ]),
                                  Spacer(flex: 52),
                                  _buildFrameSixtyEight(
                                      userName: "lbl_jane".tr),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: _buildFrameSixtyEight(
                                          userName: "lbl_mike".tr))
                                ])))
                  ])),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                  height: 35.v,
                  width: 87.h,
                  text: "lbl_view_circle".tr,
                  buttonStyle: CustomButtonStyles.outlineBlueGrayTL17,
                  buttonTextStyle: CustomTextStyles.labelLargeBlack900,
                  onPressed: () {
                    onTapViewCircle();
                  },
                  alignment: Alignment.center),
              SizedBox(height: 3.v)
            ]));
  }

  /// Section Widget
  Widget _buildFrame5() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 16.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_circle_2".tr,
                      style: CustomTextStyles.titleMediumBlack900_1)),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("msg_circle_s_wellbeing2".tr,
                      style: theme.textTheme.titleSmall)),
              SizedBox(height: 1.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_members_5".tr,
                      style: CustomTextStyles.bodySmallLight)),
              SizedBox(height: 1.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("msg_activity_level".tr,
                      style: CustomTextStyles.bodySmallLight)),
              SizedBox(height: 18.v),
              Container(
                  height: 45.v,
                  width: 342.h,
                  margin: EdgeInsets.only(left: 5.h),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUnion,
                        height: 16.v,
                        width: 342.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 8.v)),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(right: 18.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  _buildFrameSixtyEight(
                                      userName: "lbl_halima".tr),
                                  Padding(
                                      padding: EdgeInsets.only(left: 7.h),
                                      child: _buildFrameSixtyEight(
                                          userName: "lbl_jane".tr)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: _buildFrameSixtyEight(
                                          userName: "lbl_prince".tr))
                                ]))),
                    Padding(
                        padding: EdgeInsets.only(left: 97.h, right: 213.h),
                        child: _buildFrameSixtyEight(userName: "lbl_ameer".tr)),
                    Padding(
                        padding: EdgeInsets.only(left: 126.h, right: 184.h),
                        child: _buildFrameSixtyEight(userName: "lbl_jason".tr))
                  ])),
              SizedBox(height: 18.v),
              CustomElevatedButton(
                  height: 35.v,
                  width: 87.h,
                  text: "lbl_view_circle".tr,
                  buttonStyle: CustomButtonStyles.outlineBlueGrayTL17,
                  buttonTextStyle: CustomTextStyles.labelLargeBlack900,
                  alignment: Alignment.center),
              SizedBox(height: 3.v)
            ]));
  }

  /// Common widget
  Widget _buildFrameSixtyEight({required String userName}) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse30,
          height: 30.adaptSize,
          width: 30.adaptSize,
          radius: BorderRadius.circular(16.h)),
      Text(userName,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the circlesViewScreen when the action is triggered.
  onTapViewCircle() {
    Get.toNamed(
      AppRoutes.circlesViewScreen,
    );
  }
}
