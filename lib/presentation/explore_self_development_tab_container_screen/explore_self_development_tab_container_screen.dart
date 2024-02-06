import 'controller/explore_self_development_tab_container_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/chat_page/chat_page.dart';
import 'package:empylo/presentation/explore_group_activities_tab_container_page/explore_group_activities_tab_container_page.dart';
import 'package:empylo/presentation/explore_self_development_page/explore_self_development_page.dart';
import 'package:empylo/presentation/home_personal_user_page/home_personal_user_page.dart';
import 'package:empylo/presentation/subscription_page/subscription_page.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_bottom_bar.dart';
import 'package:empylo/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class ExploreSelfDevelopmentTabContainerScreen
    extends GetWidget<ExploreSelfDevelopmentTabContainerController> {
  const ExploreSelfDevelopmentTabContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: SizedBox(
          width: 391.h,
          child: Column(children: [
            SizedBox(height: 9.v),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 15.h),
                    child: Text("lbl_explore".tr,
                        style: theme.textTheme.headlineSmall))),
            SizedBox(height: 13.v),
            Padding(
                padding: EdgeInsets.only(left: 15.h, right: 16.h),
                child: CustomSearchView(
                    controller: controller.searchController,
                    hintText: "msg_search_anything".tr)),
            SizedBox(height: 13.v),
            _buildTabview(),
            SizedBox(
                height: 517.v,
                child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      ExploreSelfDevelopmentPage(),
                      ExploreSelfDevelopmentPage()
                    ]))
          ])),
    ));
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
  Widget _buildTabview() {
    return Container(
        height: 37.v,
        width: 361.h,
        decoration: BoxDecoration(
            color: appTheme.gray300, borderRadius: BorderRadius.circular(18.h)),
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onPrimary,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.gray700,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(18.h),
                border: Border.all(color: appTheme.gray300, width: 1.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.gray300.withOpacity(0.3),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(0, 4))
                ]),
            tabs: [
              Tab(child: Text("msg_self_development".tr)),
              Tab(child: Text("msg_group_activities".tr))
            ]));
  }

  /// Section Widget

  ///Handling page based on route
  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
