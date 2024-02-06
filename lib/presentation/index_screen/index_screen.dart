import '../index_screen/widgets/frame2_item_widget.dart';
import '../index_screen/widgets/frame4_item_widget.dart';
import '../index_screen/widgets/frame6_item_widget.dart';
import '../index_screen/widgets/frame8_item_widget.dart';
import '../index_screen/widgets/frame_item_widget.dart';
import 'controller/index_controller.dart';
import 'models/frame2_item_model.dart';
import 'models/frame4_item_model.dart';
import 'models/frame6_item_model.dart';
import 'models/frame8_item_model.dart';
import 'models/frame_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class IndexScreen extends GetWidget<IndexController> {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(children: [
                          Text("msg_in_the_past_week".tr,
                              style:
                                  CustomTextStyles.titleLargeSwitzerVariable_1),
                          SizedBox(height: 14.v),
                          _buildFeelingColumn(),
                          SizedBox(height: 8.v),
                          _buildFeeling2Column(),
                          SizedBox(height: 8.v),
                          _buildEnergyColumn(),
                          SizedBox(height: 8.v),
                          _buildFeeling3Column(),
                          SizedBox(height: 8.v),
                          _buildThinkingColumn()
                        ])))),
            bottomNavigationBar: _buildSaveButton()));
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
  Widget _buildFeelingColumn() {
    return Container(
        width: 361.h,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.v),
        decoration: AppDecoration.outlineTeal100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("msg_i_ve_been_feeling".tr,
                  style: CustomTextStyles.titleMediumOnPrimary),
              SizedBox(height: 13.v),
              Obx(() => Wrap(
                  runSpacing: 16.v,
                  spacing: 16.h,
                  children: List<Widget>.generate(
                      controller.indexModelObj.value.frameItemList.value.length,
                      (index) {
                    FrameItemModel model = controller
                        .indexModelObj.value.frameItemList.value[index];
                    return FrameItemWidget(model);
                  })))
            ]));
  }

  /// Section Widget
  Widget _buildFeeling2Column() {
    return Container(
        width: 360.h,
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 19.v),
        decoration: AppDecoration.outlineTeal100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("msg_i_ve_been_feeling2".tr,
                  style: CustomTextStyles.titleMediumOnPrimary),
              SizedBox(height: 13.v),
              Obx(() => Wrap(
                  runSpacing: 16.v,
                  spacing: 16.h,
                  children: List<Widget>.generate(
                      controller.indexModelObj.value.frame2ItemList.value
                          .length, (index) {
                    Frame2ItemModel model = controller
                        .indexModelObj.value.frame2ItemList.value[index];
                    return Frame2ItemWidget(model);
                  })))
            ]));
  }

  /// Section Widget
  Widget _buildEnergyColumn() {
    return Container(
        width: 359.h,
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 18.v),
        decoration: AppDecoration.outlineTeal100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("msg_i_ve_been_had_energy".tr,
                  style: CustomTextStyles.titleMediumOnPrimary),
              SizedBox(height: 13.v),
              Obx(() => Wrap(
                  runSpacing: 16.v,
                  spacing: 16.h,
                  children: List<Widget>.generate(
                      controller.indexModelObj.value.frame4ItemList.value
                          .length, (index) {
                    Frame4ItemModel model = controller
                        .indexModelObj.value.frame4ItemList.value[index];
                    return Frame4ItemWidget(model);
                  })))
            ]));
  }

  /// Section Widget
  Widget _buildFeeling3Column() {
    return Container(
        width: 360.h,
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 19.v),
        decoration: AppDecoration.outlineTeal100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 294.h,
                  margin: EdgeInsets.only(right: 35.h),
                  child: Text("msg_i_ve_been_feeling3".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumOnPrimary)),
              SizedBox(height: 12.v),
              Obx(() => Wrap(
                  runSpacing: 16.v,
                  spacing: 16.h,
                  children: List<Widget>.generate(
                      controller.indexModelObj.value.frame6ItemList.value
                          .length, (index) {
                    Frame6ItemModel model = controller
                        .indexModelObj.value.frame6ItemList.value[index];
                    return Frame6ItemWidget(model);
                  })))
            ]));
  }

  /// Section Widget
  Widget _buildThinkingColumn() {
    return Container(
        width: 358.h,
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 19.v),
        decoration: AppDecoration.outlineTeal100
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 2.v),
              Text("msg_i_ve_been_thinking".tr,
                  style: CustomTextStyles.titleMediumOnPrimary),
              SizedBox(height: 13.v),
              Obx(() => Wrap(
                  runSpacing: 16.v,
                  spacing: 16.h,
                  children: List<Widget>.generate(
                      controller.indexModelObj.value.frame8ItemList.value
                          .length, (index) {
                    Frame8ItemModel model = controller
                        .indexModelObj.value.frame8ItemList.value[index];
                    return Frame8ItemWidget(model);
                  })))
            ]));
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(
        text: "lbl_save".tr,
        margin: EdgeInsets.only(left: 44.h, right: 44.h, bottom: 33.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
