import 'dart:convert';
import 'package:empylo/widgets/app_bar/appbar_leading_image.dart';
import 'package:empylo/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:empylo/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:empylo/widgets/app_bar/custom_app_bar.dart';
import 'package:empylo/widgets/custom_elevated_button.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';
import '../home_personal_user_page/widgets/sleepqualitysection_item_widget.dart';
import 'controller/home_personal_user_controller.dart';
import 'models/home_personal_user_model.dart';
import 'models/sleepqualitysection_item_model.dart';

class HomePersonalUserPage extends StatefulWidget {
  @override
  _HomePersonalUserPageState createState() => _HomePersonalUserPageState();
}

class _HomePersonalUserPageState extends State<HomePersonalUserPage> {
  HomePersonalUserController controller = Get.put(HomePersonalUserController(HomePersonalUserModel().obs));
  String firstName = "";
  String profileImage = "";
  String currentDate = DateFormat('EEEE, d MMMM').format(DateTime.now());

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    try {
      String? accessToken = await getSavedToken();
      if (accessToken == null) {
        throw Exception('Access token is null');
      }
      Map<String, dynamic> decodedToken = decodeToken(accessToken);
      String? userId = decodedToken['sub']['id']?.toString();
      if (userId == null) {
        throw Exception('User ID is null');
      }
      final response = await http.get(
        Uri.parse('https://api.empylo.com/user/get-user-info/$userId'),
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      );
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          firstName = data['result']['firstName'];
          profileImage = data['result']['profileImage'];
        });
      } else {
        // Handle error response
        print('Failed to load user data: ${response.statusCode}');
      }
    } catch (e) {
      // Handle any exceptions
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(bottom: 10.v),
                        padding: EdgeInsets.symmetric(horizontal: 12.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: profileImage.isNotEmpty ? profileImage : ImageConstant.imgEllipse3,
                                        height: 64.adaptSize,
                                        width: 64.adaptSize,
                                        radius: BorderRadius.circular(32.h)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 9.h, top: 6.v, bottom: 2.v),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Hi, $firstName",
                                                  style: CustomTextStyles
                                                      .headlineLargeInter),
                                              Text("msg_how_re_you_feeling".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumGray800)
                                            ]))
                                  ])),
                              SizedBox(height: 20.v),
                              _buildWellbeingScore(),
                              SizedBox(height: 14.v),
                              _buildCirclesSection(),
                              SizedBox(height: 12.v),
                              _buildCirclesHomepage(),
                              SizedBox(height: 13.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("lbl_key_challenges".tr,
                                      style: theme.textTheme.titleSmall)),
                              SizedBox(height: 9.v),
                              _buildSleepQualitySection()
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
  String currentDate = DateFormat('EEEE, d MMMM').format(DateTime.now());
  
  return CustomAppBar(
    leadingWidth: 26.h,
    leading: AppbarLeadingImage(
      imagePath: ImageConstant.imgCalendar,
      margin: EdgeInsets.only(left: 16.h, top: 22.v, bottom: 23.v),
    ),
    title: AppbarSubtitleFive(
      text: currentDate,
      margin: EdgeInsets.only(left: 5.h),
    ),
    actions: [
      AppbarTrailingIconbutton(
        imagePath: ImageConstant.imgFrame12,
        margin: EdgeInsets.symmetric(horizontal: 17.h, vertical: 8.v),
        onTap: () {
          onTapIconButton();
        },
      ),
    ],
  );
}

  /// Section Widget
  Widget _buildWellbeingScore() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 17.v),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_wellbeing_score".tr,
                style: CustomTextStyles.titleMediumInterBlack900),
            SizedBox(height: 6.v),
            SizedBox(
                width: 168.h,
                child: Text("msg_lorem_ipsum_dolor".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium))
          ]),
          Container(
              height: 90.adaptSize,
              width: 90.adaptSize,
              margin: EdgeInsets.only(top: 3.v, right: 18.h, bottom: 6.v),
              child: Stack(alignment: Alignment.center, children: [
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
                    child: SizedBox(
                        height: 50.v,
                        width: 44.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("lbl_79".tr,
                                  style: CustomTextStyles.headlineLarge30)),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Text("lbl_thriving".tr,
                                  style: CustomTextStyles.bodySmallLight))
                        ])))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildCirclesSection() {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_circles".tr, style: theme.textTheme.titleSmall),
          GestureDetector(
              onTap: () {
                onTapTxtSeeAll();
              },
              child: Text("lbl_see_all".tr,
                  style: CustomTextStyles.titleSmallOnPrimaryContainer))
        ]));
  }

  /// Section Widget
  Widget _buildCirclesHomepage() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 4.h),
        padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 17.v),
        decoration: AppDecoration.outlineBlack900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_circle_1".tr,
                  style: CustomTextStyles.titleMediumBlack900_1),
              SizedBox(height: 5.v),
              Text("msg_circle_s_wellbeing".tr,
                  style: theme.textTheme.titleSmall),
              SizedBox(height: 1.v),
              Text("lbl_members_5".tr, style: CustomTextStyles.bodySmallLight),
              SizedBox(height: 1.v),
              Text("msg_activity_level".tr,
                  style: CustomTextStyles.bodySmallLight),
              SizedBox(height: 18.v),
              SizedBox(
                  height: 46.v,
                  width: 342.h,
                  child: Stack(alignment: Alignment.centerRight, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUnion,
                        height: 16.v,
                        width: 342.h,
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(top: 8.v)),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                            padding: EdgeInsets.only(
                                left: 147.h, right: 18.h, bottom: 1.v),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse31,
                                            height: 30.adaptSize,
                                            width: 30.adaptSize,
                                            radius:
                                                BorderRadius.circular(16.h)),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Text("lbl_chioma".tr,
                                                style:
                                                    theme.textTheme.bodySmall))
                                      ]),
                                  Spacer(),
                                  _buildFrameSeventyOne(mike: "lbl_jane".tr),
                                  Padding(
                                      padding: EdgeInsets.only(left: 16.h),
                                      child: _buildFrameSeventyOne(
                                          mike: "lbl_mike".tr))
                                ]))),
                    Padding(
                        padding: EdgeInsets.only(left: 35.h, right: 275.h),
                        child: _buildFrameSeventyOne(mike: "lbl_ade".tr)),
                    Padding(
                        padding: EdgeInsets.only(left: 60.h, right: 250.h),
                        child: _buildFrameSeventyOne(mike: "lbl_mary".tr))
                  ])),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                  height: 35.v,
                  width: 87.h,
                  text: "lbl_view_circle".tr,
                  buttonStyle: CustomButtonStyles.outlineBlueGrayTL17,
                  buttonTextStyle: CustomTextStyles.labelLargeBlack900,
                  alignment: Alignment.center)
            ]));
  }

  /// Section Widget
  Widget _buildSleepQualitySection() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 8.v);
            },
            itemCount: controller.homePersonalUserModelObj.value
                .sleepqualitysectionItemList.value.length,
            itemBuilder: (context, index) {
              SleepqualitysectionItemModel model = controller
                  .homePersonalUserModelObj
                  .value
                  .sleepqualitysectionItemList
                  .value[index];
              return SleepqualitysectionItemWidget(model);
            })));
  }

  /// Common widget
  Widget _buildFrameSeventyOne({required String mike}) {
    return Column(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse29,
          height: 30.adaptSize,
          width: 30.adaptSize,
          radius: BorderRadius.circular(16.h)),
      Text(mike,
          style: theme.textTheme.bodySmall!.copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the profilePersonalUserMyCirclesTabContainerScreen when the action is triggered.
  onTapTxtSeeAll() {
    Get.toNamed(
      AppRoutes.profilePersonalUserMyCirclesTabContainerScreen,
    );
  }
}
