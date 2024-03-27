import 'package:empylo/presentation/splash_screen/splash_screen.dart';
import 'package:empylo/presentation/splash_screen/binding/splash_binding.dart';
import 'package:empylo/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:empylo/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:empylo/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:empylo/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:empylo/presentation/sign_in_verifiction_screen/sign_in_verifiction_screen.dart';

import 'package:empylo/presentation/sign_in_verifiction_screen/binding/sign_in_verifiction_binding.dart';
import 'package:empylo/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:empylo/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:empylo/presentation/sign_up_user_selection_screen/sign_up_user_selection_screen.dart';
import 'package:empylo/presentation/sign_up_user_selection_screen/binding/sign_up_user_selection_binding.dart';
import 'package:empylo/presentation/sign_up_user_selection_one_screen/sign_up_user_selection_one_screen.dart';
import 'package:empylo/presentation/sign_up_user_selection_one_screen/binding/sign_up_user_selection_one_binding.dart';
import 'package:empylo/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:empylo/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:empylo/presentation/reset_code_popup_screen/reset_code_popup_screen.dart';
import 'package:empylo/presentation/reset_code_popup_screen/binding/reset_code_popup_binding.dart';
import 'package:empylo/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:empylo/presentation/reset_password_screen/binding/reset_password_binding.dart';
import 'package:empylo/presentation/reset_successful_screen/reset_successful_screen.dart';
import 'package:empylo/presentation/reset_successful_screen/binding/reset_successful_binding.dart';
import 'package:empylo/presentation/profile_setup_screen/profile_setup_screen.dart';
import 'package:empylo/presentation/profile_setup_screen/binding/profile_setup_binding.dart';
import 'package:empylo/presentation/profile_setup_client_user_screen/profile_setup_client_user_screen.dart';
import 'package:empylo/presentation/profile_setup_client_user_screen/binding/profile_setup_client_user_binding.dart';
import 'package:empylo/presentation/daily_assessment_default_screen/daily_assessment_default_screen.dart';
import 'package:empylo/presentation/daily_assessment_default_screen/binding/daily_assessment_default_binding.dart';
import 'package:empylo/presentation/daily_assessment_one_screen/daily_assessment_one_screen.dart';
import 'package:empylo/presentation/daily_assessment_one_screen/binding/daily_assessment_one_binding.dart';
import 'package:empylo/presentation/daily_assessment_two_screen/daily_assessment_two_screen.dart';
import 'package:empylo/presentation/daily_assessment_two_screen/binding/daily_assessment_two_binding.dart';
import 'package:empylo/presentation/daily_assessment_three_screen/daily_assessment_three_screen.dart';
import 'package:empylo/presentation/daily_assessment_three_screen/binding/daily_assessment_three_binding.dart';
import 'package:empylo/presentation/daily_assessment_four_screen/daily_assessment_four_screen.dart';
import 'package:empylo/presentation/daily_assessment_four_screen/binding/daily_assessment_four_binding.dart';
import 'package:empylo/presentation/daily_assessment_five_screen/daily_assessment_five_screen.dart';
import 'package:empylo/presentation/daily_assessment_five_screen/binding/daily_assessment_five_binding.dart';
import 'package:empylo/presentation/index_screen/index_screen.dart';
import 'package:empylo/presentation/index_screen/binding/index_binding.dart';
import 'package:empylo/presentation/home_personal_user_container_screen/home_personal_user_container_screen.dart';
import 'package:empylo/presentation/home_personal_user_container_screen/binding/home_personal_user_container_binding.dart';
import 'package:empylo/presentation/notifications_screen/notifications_screen.dart';
import 'package:empylo/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:empylo/presentation/explore_self_development_tab_container_screen/explore_self_development_tab_container_screen.dart';
import 'package:empylo/presentation/explore_self_development_tab_container_screen/binding/explore_self_development_tab_container_binding.dart';
import 'package:empylo/presentation/recommended_activities_screen/recommended_activities_screen.dart';
import 'package:empylo/presentation/recommended_activities_screen/binding/recommended_activities_binding.dart';
import 'package:empylo/presentation/affirmations_page_screen/affirmations_page_screen.dart';
import 'package:empylo/presentation/affirmations_page_screen/binding/affirmations_page_binding.dart';
import 'package:empylo/presentation/chat_message_screen/chat_message_screen.dart';
import 'package:empylo/presentation/chat_message_screen/binding/chat_message_binding.dart';
import 'package:empylo/presentation/chat_message_typing_screen/chat_message_typing_screen.dart';
import 'package:empylo/presentation/chat_message_typing_screen/binding/chat_message_typing_binding.dart';
import 'package:empylo/presentation/chat_group_message_screen/chat_group_message_screen.dart';
import 'package:empylo/presentation/chat_group_message_screen/binding/chat_group_message_binding.dart';
import 'package:empylo/presentation/chat_group_message_typing_screen/chat_group_message_typing_screen.dart';
import 'package:empylo/presentation/chat_group_message_typing_screen/binding/chat_group_message_typing_binding.dart';
import 'package:empylo/presentation/huddle_screen/huddle_screen.dart';
import 'package:empylo/presentation/huddle_screen/binding/huddle_binding.dart';
import 'package:empylo/presentation/on_1_call_screen/on_1_call_screen.dart';
import 'package:empylo/presentation/on_1_call_screen/binding/on_1_call_binding.dart';
import 'package:empylo/presentation/client_user_profile_my_circles_tab_container_screen/client_user_profile_my_circles_tab_container_screen.dart';
import 'package:empylo/presentation/client_user_profile_my_circles_tab_container_screen/binding/client_user_profile_my_circles_tab_container_binding.dart';
import 'package:empylo/presentation/client_user_overview_tab_container_screen/client_user_overview_tab_container_screen.dart';
import 'package:empylo/presentation/client_user_overview_tab_container_screen/binding/client_user_overview_tab_container_binding.dart';
import 'package:empylo/presentation/profile_personal_user_my_circles_tab_container_screen/profile_personal_user_my_circles_tab_container_screen.dart';
import 'package:empylo/presentation/profile_personal_user_my_circles_tab_container_screen/binding/profile_personal_user_my_circles_tab_container_binding.dart';
import 'package:empylo/presentation/profile_account_tab_container_screen/profile_account_tab_container_screen.dart';
import 'package:empylo/presentation/profile_account_tab_container_screen/binding/profile_account_tab_container_binding.dart';
import 'package:empylo/presentation/create_new_circle_screen/create_new_circle_screen.dart';
import 'package:empylo/presentation/create_new_circle_screen/binding/create_new_circle_binding.dart';
import 'package:empylo/presentation/circles_view_screen/circles_view_screen.dart';
import 'package:empylo/presentation/circles_view_screen/binding/circles_view_binding.dart';
import 'package:empylo/presentation/choose_plan_popup_screen/choose_plan_popup_screen.dart';
import 'package:empylo/presentation/choose_plan_popup_screen/binding/choose_plan_popup_binding.dart';
import 'package:empylo/presentation/subscription_checkout_screen/subscription_checkout_screen.dart';
import 'package:empylo/presentation/subscription_checkout_screen/binding/subscription_checkout_binding.dart';
import 'package:empylo/presentation/subscription_successful_screen/subscription_successful_screen.dart';
import 'package:empylo/presentation/subscription_successful_screen/binding/subscription_successful_binding.dart';
import 'package:empylo/presentation/notifications_settings_screen/notifications_settings_screen.dart';
import 'package:empylo/presentation/notifications_settings_screen/binding/notifications_settings_binding.dart';
import 'package:empylo/presentation/personal_information_screen/personal_information_screen.dart';
import 'package:empylo/presentation/personal_information_screen/binding/personal_information_binding.dart';
import 'package:empylo/presentation/security_screen/security_screen.dart';
import 'package:empylo/presentation/security_screen/binding/security_binding.dart';
import 'package:empylo/presentation/my_circles_faq_screen/my_circles_faq_screen.dart';
import 'package:empylo/presentation/my_circles_faq_screen/binding/my_circles_faq_binding.dart';
import 'package:empylo/presentation/tell_a_friend_screen/tell_a_friend_screen.dart';
import 'package:empylo/presentation/tell_a_friend_screen/binding/tell_a_friend_binding.dart';
import 'package:empylo/presentation/fa_screen/fa_screen.dart';
import 'package:empylo/presentation/fa_screen/binding/fa_binding.dart';
import 'package:empylo/presentation/fa_code_screen/fa_code_screen.dart';
import 'package:empylo/presentation/fa_code_screen/binding/fa_code_binding.dart';
import 'package:empylo/presentation/fa_verified_screen/fa_verified_screen.dart';
import 'package:empylo/presentation/fa_verified_screen/binding/fa_verified_binding.dart';
import 'package:empylo/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:empylo/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String signInScreen = '/sign_in_screen';
  static const String signInVerifictionScreen = '/sign_in_verifiction_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpUserSelectionScreen =
      '/sign_up_user_selection_screen';

  static const String signUpUserSelectionOneScreen =
      '/sign_up_user_selection_one_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String resetCodePopupScreen = '/reset_code_popup_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String resetSuccessfulScreen = '/reset_successful_screen';

  static const String profileSetupScreen = '/profile_setup_screen';

  static const String profileSetupClientUserScreen =
      '/profile_setup_client_user_screen';

  static const String dailyAssessmentDefaultScreen =
      '/daily_assessment_default_screen';

  static const String dailyAssessmentOneScreen = '/daily_assessment_one_screen';

  static const String dailyAssessmentTwoScreen = '/daily_assessment_two_screen';

  static const String dailyAssessmentThreeScreen =
      '/daily_assessment_three_screen';

  static const String dailyAssessmentFourScreen =
      '/daily_assessment_four_screen';

  static const String dailyAssessmentFiveScreen =
      '/daily_assessment_five_screen';

  static const String indexScreen = '/index_screen';

  static const String homePersonalUserPage = '/home_personal_user_page';

  static const String homePersonalUserContainerScreen =
      '/home_personal_user_container_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String exploreSelfDevelopmentPage =
      '/explore_self_development_page';

  static const String exploreSelfDevelopmentTabContainerScreen =
      '/explore_self_development_tab_container_screen';

  static const String recommendedActivitiesScreen =
      '/recommended_activities_screen';

  static const String affirmationsPageScreen = '/affirmations_page_screen';

  static const String exploreGroupActivitiesPage =
      '/explore_group_activities_page';

  static const String exploreGroupActivitiesTabContainerPage =
      '/explore_group_activities_tab_container_page';

  static const String chatPage = '/chat_page';

  static const String chatMessageScreen = '/chat_message_screen';

  static const String chatMessageTypingScreen = '/chat_message_typing_screen';

  static const String chatGroupMessageScreen = '/chat_group_message_screen';

  static const String chatGroupMessageTypingScreen =
      '/chat_group_message_typing_screen';

  static const String huddleScreen = '/huddle_screen';

  static const String on1CallScreen = '/on_1_call_screen';

  static const String clientUserProfileMyCirclesPage =
      '/client_user_profile_my_circles_page';

  static const String clientUserProfileMyCirclesTabContainerScreen =
      '/client_user_profile_my_circles_tab_container_screen';

  static const String clientUserOverviewOnePage =
      '/client_user_overview_one_page';

  static const String clientUserOverviewPage = '/client_user_overview_page';

  static const String clientUserOverviewTabContainerScreen =
      '/client_user_overview_tab_container_screen';

  static const String profilePersonalUserMyCirclesPage =
      '/profile_personal_user_my_circles_page';

  static const String profilePersonalUserMyCirclesTabContainerScreen =
      '/profile_personal_user_my_circles_tab_container_screen';

  static const String profileAccountPage = '/profile_account_page';

  static const String profileAccountTabContainerScreen =
      '/profile_account_tab_container_screen';

  static const String createNewCircleScreen = '/create_new_circle_screen';

  static const String circlesViewScreen = '/circles_view_screen';

  static const String subscriptionPage = '/subscription_page';

  static const String choosePlanPopupScreen = '/choose_plan_popup_screen';

  static const String subscriptionCheckoutScreen =
      '/subscription_checkout_screen';

  static const String subscriptionSuccessfulScreen =
      '/subscription_successful_screen';

  static const String notificationsSettingsScreen =
      '/notifications_settings_screen';

  static const String personalInformationScreen =
      '/personal_information_screen';

  static const String securityScreen = '/security_screen';

  static const String myCirclesFaqScreen = '/my_circles_faq_screen';

  static const String tellAFriendScreen = '/tell_a_friend_screen';

  static const String faScreen = '/fa_screen';

  static const String faCodeScreen = '/fa_code_screen';

  static const String faVerifiedScreen = '/fa_verified_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: signInVerifictionScreen,
      page: () => SignInVerifictionScreen(),
      bindings: [
        SignInVerifictionBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signUpUserSelectionScreen,
      page: () => SignUpUserSelectionScreen(),
      bindings: [
        SignUpUserSelectionBinding(),
      ],
    ),
    GetPage(
      name: signUpUserSelectionOneScreen,
      page: () => SignUpUserSelectionOneScreen(),
      bindings: [
        SignUpUserSelectionOneBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: resetCodePopupScreen,
      page: () => ResetCodePopupScreen(),
      bindings: [
        ResetCodePopupBinding(),
      ],
    ),
    GetPage(
      name: resetPasswordScreen,
      page: () => ResetPasswordScreen(),
      bindings: [
        ResetPasswordBinding(),
      ],
    ),
    GetPage(
      name: resetSuccessfulScreen,
      page: () => ResetSuccessfulScreen(),
      bindings: [
        ResetSuccessfulBinding(),
      ],
    ),
    GetPage(
      name: profileSetupScreen,
      page: () => ProfileSetupScreen(),
      bindings: [
        ProfileSetupBinding(),
      ],
    ),
    GetPage(
      name: profileSetupClientUserScreen,
      page: () => ProfileSetupClientUserScreen(),
      bindings: [
        ProfileSetupClientUserBinding(),
      ],
    ),
    GetPage(
      name: dailyAssessmentDefaultScreen,
      page: () => DailyAssessmentDefaultScreen(),
      bindings: [
        DailyAssessmentDefaultBinding(),
      ],
    ),
    GetPage(
      name: dailyAssessmentOneScreen,
      page: () => DailyAssessmentOneScreen(),
      bindings: [
        DailyAssessmentOneBinding(),
      ],
    ),
    GetPage(
      name: dailyAssessmentTwoScreen,
      page: () => DailyAssessmentTwoScreen(),
      bindings: [
        DailyAssessmentTwoBinding(),
      ],
    ),
    GetPage(
      name: dailyAssessmentThreeScreen,
      page: () => DailyAssessmentThreeScreen(),
      bindings: [
        DailyAssessmentThreeBinding(),
      ],
    ),
    GetPage(
      name: dailyAssessmentFourScreen,
      page: () => DailyAssessmentFourScreen(),
      bindings: [
        DailyAssessmentFourBinding(),
      ],
    ),
    GetPage(
      name: dailyAssessmentFiveScreen,
      page: () => DailyAssessmentFiveScreen(),
      bindings: [
        DailyAssessmentFiveBinding(),
      ],
    ),
    GetPage(
      name: indexScreen,
      page: () => IndexScreen(),
      bindings: [
        IndexBinding(),
      ],
    ),
    GetPage(
      name: homePersonalUserContainerScreen,
      page: () => HomePersonalUserContainerScreen(),
      bindings: [
        HomePersonalUserContainerBinding(),
      ],
    ),
    GetPage(
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: exploreSelfDevelopmentTabContainerScreen,
      page: () => ExploreSelfDevelopmentTabContainerScreen(),
      bindings: [
        ExploreSelfDevelopmentTabContainerBinding(),
      ],
    ),
    GetPage(
      name: recommendedActivitiesScreen,
      page: () => RecommendedActivitiesScreen(),
      bindings: [
        RecommendedActivitiesBinding(),
      ],
    ),
    GetPage(
      name: affirmationsPageScreen,
      page: () => AffirmationsPageScreen(),
      bindings: [
        AffirmationsPageBinding(),
      ],
    ),
    GetPage(
      name: chatMessageScreen,
      page: () => ChatMessageScreen(),
      bindings: [
        ChatMessageBinding(),
      ],
    ),
    GetPage(
      name: chatMessageTypingScreen,
      page: () => ChatMessageTypingScreen(),
      bindings: [
        ChatMessageTypingBinding(),
      ],
    ),
    GetPage(
      name: chatGroupMessageScreen,
      page: () => ChatGroupMessageScreen(),
      bindings: [
        ChatGroupMessageBinding(),
      ],
    ),
    GetPage(
      name: chatGroupMessageTypingScreen,
      page: () => ChatGroupMessageTypingScreen(),
      bindings: [
        ChatGroupMessageTypingBinding(),
      ],
    ),
    GetPage(
      name: huddleScreen,
      page: () => HuddleScreen(),
      bindings: [
        HuddleBinding(),
      ],
    ),
    GetPage(
      name: on1CallScreen,
      page: () => On1CallScreen(),
      bindings: [
        On1CallBinding(),
      ],
    ),
    GetPage(
      name: clientUserProfileMyCirclesTabContainerScreen,
      page: () => ClientUserProfileMyCirclesTabContainerScreen(),
      bindings: [
        ClientUserProfileMyCirclesTabContainerBinding(),
      ],
    ),
    GetPage(
      name: clientUserOverviewTabContainerScreen,
      page: () => ClientUserOverviewTabContainerScreen(),
      bindings: [
        ClientUserOverviewTabContainerBinding(),
      ],
    ),
    GetPage(
      name: profilePersonalUserMyCirclesTabContainerScreen,
      page: () => ProfilePersonalUserMyCirclesTabContainerScreen(),
      bindings: [
        ProfilePersonalUserMyCirclesTabContainerBinding(),
      ],
    ),
    GetPage(
      name: profileAccountTabContainerScreen,
      page: () => ProfileAccountTabContainerScreen(),
      bindings: [
        ProfileAccountTabContainerBinding(),
      ],
    ),
    GetPage(
      name: createNewCircleScreen,
      page: () => CreateNewCircleScreen(),
      bindings: [
        CreateNewCircleBinding(),
      ],
    ),
    GetPage(
      name: circlesViewScreen,
      page: () => CirclesViewScreen(),
      bindings: [
        CirclesViewBinding(),
      ],
    ),
    GetPage(
      name: choosePlanPopupScreen,
      page: () => ChoosePlanPopupScreen(),
      bindings: [
        ChoosePlanPopupBinding(),
      ],
    ),
    GetPage(
      name: subscriptionCheckoutScreen,
      page: () => SubscriptionCheckoutScreen(),
      bindings: [
        SubscriptionCheckoutBinding(),
      ],
    ),
    GetPage(
      name: subscriptionSuccessfulScreen,
      page: () => SubscriptionSuccessfulScreen(),
      bindings: [
        SubscriptionSuccessfulBinding(),
      ],
    ),
    GetPage(
      name: notificationsSettingsScreen,
      page: () => NotificationsSettingsScreen(),
      bindings: [
        NotificationsSettingsBinding(),
      ],
    ),
    GetPage(
      name: personalInformationScreen,
      page: () => PersonalInformationScreen(),
      bindings: [
        PersonalInformationBinding(),
      ],
    ),
    GetPage(
      name: securityScreen,
      page: () => SecurityScreen(),
      bindings: [
        SecurityBinding(),
      ],
    ),
    GetPage(
      name: myCirclesFaqScreen,
      page: () => MyCirclesFaqScreen(),
      bindings: [
        MyCirclesFaqBinding(),
      ],
    ),
    GetPage(
      name: tellAFriendScreen,
      page: () => TellAFriendScreen(),
      bindings: [
        TellAFriendBinding(),
      ],
    ),
    GetPage(
      name: faScreen,
      page: () => FaScreen(),
      bindings: [
        FaBinding(),
      ],
    ),
    GetPage(
      name: faCodeScreen,
      page: () => FaCodeScreen(),
      bindings: [
        FaCodeBinding(),
      ],
    ),
    GetPage(
      name: faVerifiedScreen,
      page: () => FaVerifiedScreen(),
      bindings: [
        FaVerifiedBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
