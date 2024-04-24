import 'package:empylo/presentation/profile_account_page/profile_account_page.dart';
import 'package:empylo/widgets/custom_icon_button.dart';

import 'controller/profile_personal_user_my_circles_tab_container_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/chat_page/chat_page.dart';
import 'package:empylo/presentation/explore_group_activities_tab_container_page/explore_group_activities_tab_container_page.dart';
import 'package:empylo/presentation/home_personal_user_page/home_personal_user_page.dart';
import 'package:empylo/presentation/profile_personal_user_my_circles_page/profile_personal_user_my_circles_page.dart';
import 'package:empylo/presentation/subscription_page/subscription_page.dart';
import 'package:empylo/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
//ProfilePersonalUserMyCirclesTabContainerScreen
//ProfilePersonalUserMyCirclesTabContainerController

class ProfilePersonalUserMyCirclesTabContainerScreen
    extends GetWidget<ProfilePersonalUserMyCirclesTabContainerController> {
  const ProfilePersonalUserMyCirclesTabContainerScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
          width: 391.h,
          child: Column(children: [
            SizedBox(height: 13.v),
            _buildTablerStack(),
            SizedBox(height: 3.v),
            Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
              Text("lbl_jane".tr, style: theme.textTheme.titleLarge),
              SizedBox(height: 4.v),
              Text("msg_janedoe_gmail_com".tr,
                  style: theme.textTheme.bodyMedium),
              SizedBox(height: 1.v),
              Text("lbl_personal_user2".tr,
                  style: CustomTextStyles.bodySmallTeal600),
              SizedBox(height: 17.v),
              _buildTabview(),
              SizedBox(
                  height: 584.v,
                  child: TabBarView(
                      controller: controller.tabviewController,
                      children: [
                        ProfilePersonalUserMyCirclesPage(),
                        ProfileAccountPage()
                      ]))
            ])))
          ])),
      //bottomNavigationBar: _buildBottomBar()
    ));
  }

  /// Section Widget
  Widget _buildTablerStack() {
    return SizedBox(
        height: 108.v,
        width: 360.h,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgEllipse4488x88,
              height: 88.adaptSize,
              width: 88.adaptSize,
              radius: BorderRadius.circular(44.h),
              alignment: Alignment.bottomCenter),
          CustomAppBar(
              height: 41.v,
              leadingWidth: 56.h,
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
              actions: [
                Padding(
                    padding: EdgeInsets.only(left: 17.h, top: 1.v, right: 17.h),
                    child: QrImageView(
                        data: 'https://www.google.com', size: 40.adaptSize))
              ])
        ]));
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 37.v,
        width: 361.h,
        decoration: BoxDecoration(
            color: appTheme.gray300, borderRadius: BorderRadius.circular(18.h)),
        child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onPrimary,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.blueGray400,
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
              Tab(child: Text("lbl_my_circles".tr)),
              Tab(child: Text("lbl_account".tr))
            ]));
  }

  /// Section Widget
  // Widget _buildBottomBar() {
  //   return CustomBottomBar(onChanged: (BottomBarEnum type) {
  //     Get.toNamed(getCurrentRoute(type), id: 1);
  //   });
  // }

  // ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Home:
  //       return AppRoutes.homePersonalUserPage;
  //     case BottomBarEnum.Explore:
  //       return AppRoutes.exploreGroupActivitiesTabContainerPage;
  //     case BottomBarEnum.Chat:
  //       return AppRoutes.chatPage;
  //     case BottomBarEnum.Profile:
  //       return AppRoutes.subscriptionPage;
  //     default:
  //       return "/";
  //   }
  // }

  // ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.homePersonalUserPage:
  //       return HomePersonalUserPage();
  //     case AppRoutes.exploreGroupActivitiesTabContainerPage:
  //       return ExploreGroupActivitiesTabContainerPage();
  //     case AppRoutes.chatPage:
  //       return ChatPage();
  //     case AppRoutes.subscriptionPage:
  //       return SubscriptionPage();
  //     default:
  //       return DefaultWidget();
  //   }
  // }

  // /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
