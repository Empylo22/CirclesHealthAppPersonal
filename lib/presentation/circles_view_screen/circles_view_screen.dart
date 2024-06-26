import '../circles_view_screen/widgets/userprofilelist4_item_widget.dart';
import 'controller/circles_view_controller.dart';
import 'models/userprofilelist4_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/appbar_title.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CirclesViewScreen extends GetWidget<CirclesViewController> {
  const CirclesViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 5.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: 90.adaptSize,
                              width: 90.adaptSize,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                        height: 90.adaptSize,
                                        width: 90.adaptSize,
                                        child: CircularProgressIndicator(
                                            value: 0.5,
                                            backgroundColor: appTheme.teal50,
                                            color: theme.colorScheme.primary))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.h),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text("lbl_57_5".tr,
                                                  style: CustomTextStyles
                                                      .headlineSmallSwitzerVariable),
                                              Text("lbl_thriving".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallLight)
                                            ])))
                              ]))),
                      SizedBox(height: 12.v),
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              width: 112.h,
                              child: Text("msg_members_5_activity".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodyMedium))),
                      SizedBox(height: 13.v),
                      _buildFrameRow(),
                      SizedBox(height: 31.v),
                      Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Text("lbl_members".tr,
                              style: CustomTextStyles.titleSmallPrimary)),
                      SizedBox(height: 5.v),
                      SizedBox(
                          width: 74.h,
                          child: Divider(
                              color: theme.colorScheme.primary, indent: 14.h)),
                      SizedBox(height: 13.v),
                      _buildUserProfileList()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeftBlack900,
            margin: EdgeInsets.only(left: 16.h, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(
            text: "lbl_circle_1".tr, margin: EdgeInsets.only(top: 28.v)));
  }

  /// Section Widget
  Widget _buildFrameRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          width: 94.h,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
          decoration: AppDecoration.outlineBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomImageView(
                imagePath: ImageConstant.imgMdiMessageOutline,
                height: 16.adaptSize,
                width: 16.adaptSize,
                margin: EdgeInsets.symmetric(vertical: 1.v)),
            Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text("lbl_message".tr,
                    style: CustomTextStyles.labelLargeSwitzerVariableWhiteA700))
          ])),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 9.v),
          decoration: AppDecoration.outlineBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgMaterialSymbolsCall,
                height: 16.adaptSize,
                width: 16.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text("lbl_start_huddle".tr,
                    style: CustomTextStyles.labelLargeSwitzerVariableWhiteA700))
          ])),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 10.v),
          decoration: AppDecoration.outlineBluegray400
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgFluentMdl2Leave,
                height: 16.adaptSize,
                width: 16.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text("lbl_leave_circle".tr,
                    style: CustomTextStyles.labelLargeBlack900))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Obx(() => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.v);
        },
        itemCount: controller
            .circlesViewModelObj.value.userprofilelist4ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofilelist4ItemModel model = controller
              .circlesViewModelObj.value.userprofilelist4ItemList.value[index];
          return Userprofilelist4ItemWidget(model);
        }));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
