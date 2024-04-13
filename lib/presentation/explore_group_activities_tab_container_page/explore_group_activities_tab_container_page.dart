import 'package:empylo/presentation/explore_group_activities_page/explore_group_activities_page.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'controller/explore_group_activities_tab_container_controller.dart';
import 'models/explore_group_activities_tab_container_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/explore_self_development_page/explore_self_development_page.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ExploreGroupActivitiesTabContainerPage extends StatelessWidget {
  ExploreGroupActivitiesTabContainerPage({Key? key}) : super(key: key);

  ExploreGroupActivitiesTabContainerController controller = Get.put(
      ExploreGroupActivitiesTabContainerController(
          ExploreGroupActivitiesTabContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    //mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("lbl_explore".tr,
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 10.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: CustomSearchView(
                          controller: controller.searchController,
                          hintText: "msg_search_anything".tr)),
                  SizedBox(height: 13.v),
                  _buildTabview(),
                  SizedBox(
                      height: 516.v,
                      child: TabBarView(
                          controller: controller.tabviewController,
                          children: [
                            ExploreSelfDevelopmentPage(),
                            ExploreGroupActivitiesPage()
                          ]))
                ]))));
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

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 38.v,
        width: 361.h,
        decoration: BoxDecoration(
            color: appTheme.gray300, borderRadius: BorderRadius.circular(19.h)),
        child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onPrimary,
            labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Switzer Variable',
                fontWeight: FontWeight.w500),
            unselectedLabelColor: appTheme.blueGray400,
            unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Switzer Variable',
                fontWeight: FontWeight.w500),
            indicator: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(19.h),
                border: Border.all(color: appTheme.gray300, width: 1.h),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.gray300.withOpacity(0.3),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(0, 4))
                ],
                
                ),
            tabs: [
              Tab(child: Text("msg_self_development".tr)),
              Tab(child: Text("msg_group_activities".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
