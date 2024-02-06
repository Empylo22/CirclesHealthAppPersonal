import 'controller/app_navigation_controller.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Onboarding".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up (user selection)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpUserSelectionScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign up (user selection) One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUpUserSelectionOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Forgot password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.forgotPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reset code popup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetCodePopupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reset password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reset successful".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile setup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileSetupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile setup (client user)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileSetupClientUserScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Daily assessment (default)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dailyAssessmentDefaultScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Daily assessment One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dailyAssessmentOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Daily assessment Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dailyAssessmentTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Daily assessment Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dailyAssessmentThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Daily assessment Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dailyAssessmentFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Daily assessment Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.dailyAssessmentFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "9-index".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.indexScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home (personal user) - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.homePersonalUserContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Explore (self-development) - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .exploreSelfDevelopmentTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Recommended activities".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.recommendedActivitiesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Affirmations page".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.affirmationsPageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat (message)".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.chatMessageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat (message typing)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatMessageTypingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat (group message)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatGroupMessageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Chat (group message typing)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.chatGroupMessageTypingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Huddle".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.huddleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "1 on 1 call".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.on1CallScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Client user Profile (My circles) - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .clientUserProfileMyCirclesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Client User Overview - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.clientUserOverviewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "Profile personal user (My circles) - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .profilePersonalUserMyCirclesTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile (account) - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.profileAccountTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Create new circle".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.createNewCircleScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Circles view".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.circlesViewScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Choose plan popup".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.choosePlanPopupScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Subscription (checkout)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.subscriptionCheckoutScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Subscription successful".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.subscriptionSuccessfulScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifications settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.notificationsSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Personal information".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.personalInformationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Security".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.securityScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My Circles FAQ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myCirclesFaqScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tell a friend".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tellAFriendScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "2FA".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "2FA code".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faCodeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "2FA verified".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.faVerifiedScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
