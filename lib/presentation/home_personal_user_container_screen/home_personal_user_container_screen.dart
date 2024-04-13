import 'package:empylo/presentation/profile_personal_user_my_circles_tab_container_screen/profile_personal_user_my_circles_tab_container_screen.dart';
import 'controller/home_personal_user_container_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/presentation/chat_page/chat_page.dart';
import 'package:empylo/presentation/explore_group_activities_tab_container_page/explore_group_activities_tab_container_page.dart';
import 'package:empylo/presentation/home_personal_user_page/home_personal_user_page.dart';
import 'package:empylo/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePersonalUserContainerScreen
    extends GetWidget<HomePersonalUserContainerController> {
  const HomePersonalUserContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homePersonalUserPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePersonalUserPage;
      case BottomBarEnum.Explore:
        return AppRoutes.exploreGroupActivitiesTabContainerPage;
      case BottomBarEnum.Chat:
        return AppRoutes.chatPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePersonalUserMyCirclesTabContainerScreen;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePersonalUserPage:
        return HomePersonalUserPage();
      case AppRoutes.exploreGroupActivitiesTabContainerPage:
        return ExploreGroupActivitiesTabContainerPage();
      case AppRoutes.chatPage:
        return ChatPage();
      case AppRoutes.profilePersonalUserMyCirclesTabContainerScreen:
        return ProfilePersonalUserMyCirclesTabContainerScreen();
      default:
        return DefaultWidget();
    }
  }
}
