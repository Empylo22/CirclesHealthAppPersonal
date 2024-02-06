import '../recommended_activities_screen/widgets/learn_item_widget.dart';
import 'controller/recommended_activities_controller.dart';
import 'models/learn_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton_two.dart';
import 'package:empylo/widgets/app_bar/appbar_trailing_image.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class RecommendedActivitiesScreen
    extends GetWidget<RecommendedActivitiesController> {
  const RecommendedActivitiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildNine(),
                  SizedBox(height: 22.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgRectangle46,
                                    height: 185.v,
                                    width: 361.h,
                                    radius: BorderRadius.circular(20.h)),
                                SizedBox(height: 32.v),
                                SizedBox(
                                    width: 358.h,
                                    child: Text("msg_lorem_ipsum_dolor3".tr,
                                        maxLines: 24,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium))
                              ]))))
                ])),
            bottomNavigationBar: _buildComplete()));
  }

  /// Section Widget
  Widget _buildNine() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 9.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL50),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                  height: 40.v,
                  leadingWidth: 56.h,
                  leading: AppbarLeadingIconbuttonTwo(
                      imagePath: ImageConstant.imgArrowLeftBlack900,
                      margin: EdgeInsets.only(left: 16.h),
                      onTap: () {
                        onTapArrowLeft();
                      }),
                  actions: [
                    AppbarTrailingImage(
                        imagePath: ImageConstant.imgIcBaselineShare,
                        margin: EdgeInsets.fromLTRB(16.h, 7.v, 16.h, 1.v))
                  ]),
              SizedBox(height: 20.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text("lbl_sleep_hygiene2".tr,
                      style: CustomTextStyles
                          .headlineSmallSwitzerVariableWhiteA700)),
              SizedBox(height: 6.v),
              Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Obx(() => Wrap(
                      runSpacing: 9.v,
                      spacing: 9.h,
                      children: List<Widget>.generate(
                          controller.recommendedActivitiesModelObj.value
                              .learnItemList.value.length, (index) {
                        LearnItemModel model = controller
                            .recommendedActivitiesModelObj
                            .value
                            .learnItemList
                            .value[index];
                        return LearnItemWidget(model);
                      })))),
              SizedBox(height: 27.v)
            ]));
  }

  /// Section Widget
  Widget _buildComplete() {
    return CustomElevatedButton(
        text: "lbl_complete".tr,
        margin: EdgeInsets.only(left: 17.h, right: 16.h, bottom: 53.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
