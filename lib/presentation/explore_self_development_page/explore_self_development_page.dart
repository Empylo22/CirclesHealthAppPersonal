import '../explore_self_development_page/widgets/userprofilelist1_item_widget.dart';
import '../explore_self_development_page/widgets/userprofilelist2_item_widget.dart';
import 'controller/explore_self_development_controller.dart';
import 'models/explore_self_development_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'models/userprofilelist2_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ExploreSelfDevelopmentPage extends StatelessWidget {
  ExploreSelfDevelopmentPage({Key? key}) : super(key: key);

  ExploreSelfDevelopmentController controller = Get.put(
      ExploreSelfDevelopmentController(ExploreSelfDevelopmentModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillGray,
                  child: Column(children: [
                    SizedBox(height: 13.v),
                    Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildRecommendedActivitiesFrame(),
                              SizedBox(height: 12.v),
                              _buildUserProfileList(),
                              SizedBox(height: 11.v),
                              Text("msg_daily_affirmations".tr,
                                  style: CustomTextStyles.titleSmallOnPrimary),
                              SizedBox(height: 7.v),
                              _buildFrame(),
                              SizedBox(height: 13.v),
                              _buildUserProfileList1()
                            ]))
                  ])),
            )));
  }

  /// Section Widget
  Widget _buildRecommendedActivitiesFrame() {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child:
            Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        Text("msg_recommended_activities".tr,
                style: CustomTextStyles.titleSmallOnPrimary),
                        Text("lbl_see_all".tr,
                style: CustomTextStyles.titleSmallOnPrimaryContainer)
                      ]),
            ));
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
        height: 219.v,
        child: Obx(() => ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 9.h);
            },
            itemCount: controller.exploreSelfDevelopmentModelObj.value
                .userprofilelist1ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofilelist1ItemModel model = controller
                  .exploreSelfDevelopmentModelObj
                  .value
                  .userprofilelist1ItemList
                  .value[index];
              return Userprofilelist1ItemWidget(model, onTapUserProfile: () {
                onTapUserProfile();
              });
            })));
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.only(right: 15.h),
        child: Row(children: [
          Container(
              width: 42.h,
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Text("lbl_love".tr, style: theme.textTheme.bodySmall)),
          Container(
              width: 67.h,
              margin: EdgeInsets.only(left: 15.h),
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child:
                  Text("lbl_hard_work".tr, style: theme.textTheme.bodySmall)),
          Container(
              width: 52.h,
              margin: EdgeInsets.only(left: 15.h),
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 5.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Text("lbl_career".tr, style: theme.textTheme.bodySmall)),
          Container(
              width: 60.h,
              margin: EdgeInsets.only(left: 15.h),
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 4.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Text("lbl_courage".tr, style: theme.textTheme.bodySmall)),
          Container(
              width: 81.h,
              margin: EdgeInsets.only(left: 15.h),
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 4.v),
              decoration: AppDecoration.outlinePrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: Text("lbl_relationships".tr,
                  style: theme.textTheme.bodySmall))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfileList1() {
    return SizedBox(
        height: 173.v,
        child: Obx(() => ListView.separated(
            padding: EdgeInsets.only(right: 18.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 14.h);
            },
            itemCount: controller.exploreSelfDevelopmentModelObj.value
                .userprofilelist2ItemList.value.length,
            itemBuilder: (context, index) {
              Userprofilelist2ItemModel model = controller
                  .exploreSelfDevelopmentModelObj
                  .value
                  .userprofilelist2ItemList
                  .value[index];
              return Userprofilelist2ItemWidget(model, onTapBtnMapButton: () {
                onTapBtnMapButton();
              });
            })));
  }

  /// Navigates to the recommendedActivitiesScreen when the action is triggered.
  onTapUserProfile() {
    Get.toNamed(AppRoutes.recommendedActivitiesScreen);
  }

  /// Navigates to the affirmationsPageScreen when the action is triggered.
  onTapBtnMapButton() {
    Get.toNamed(
      AppRoutes.affirmationsPageScreen,
    );
  }
}
