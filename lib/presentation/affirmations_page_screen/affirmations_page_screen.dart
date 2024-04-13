import 'package:empylo/widgets/custom_icon_button.dart';

import 'controller/affirmations_page_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton_three.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AffirmationsPageScreen extends GetWidget<AffirmationsPageController> {
  const AffirmationsPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: _buildAppBar(),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                padding: EdgeInsets.only(top: 56.v),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgAffirmationsPage),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 33.h, vertical: 155.v),
                    child: Column(children: [
                      Text("msg_friday_23_november".tr,
                          style: CustomTextStyles.titleMediumInter),
                      SizedBox(height: 58.v),
                      Container(
                          width: 275.h,
                          margin: EdgeInsets.only(left: 26.h, right: 24.h),
                          child: Text("msg_every_step_i_take".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles
                                  .headlineLargeInterWhiteA700)),
                      Spacer(flex: 51),
                      CustomImageView(
                          imagePath: ImageConstant.imgFrame131,
                          height: 32.v,
                          width: 324.h),
                      Spacer(flex: 48)
                    ])))));
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

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
