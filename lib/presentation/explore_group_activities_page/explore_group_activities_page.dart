import '../explore_group_activities_page/widgets/userprofile_item_widget.dart';
import 'controller/explore_group_activities_controller.dart';
import 'models/explore_group_activities_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ExploreGroupActivitiesPage extends StatelessWidget {
  ExploreGroupActivitiesPage({Key? key}) : super(key: key);

  ExploreGroupActivitiesController controller = Get.put(
      ExploreGroupActivitiesController(ExploreGroupActivitiesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(children: [
                  SizedBox(height: 6.v),
                  SizedBox(
                      height: 173.v,
                      child: Obx(() => ListView.separated(
                          padding: EdgeInsets.symmetric(horizontal: 17.h),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 14.h);
                          },
                          itemCount: controller.exploreGroupActivitiesModelObj
                              .value.userprofileItemList.value.length,
                          itemBuilder: (context, index) {
                            UserprofileItemModel model = controller
                                .exploreGroupActivitiesModelObj
                                .value
                                .userprofileItemList
                                .value[index];
                            return UserprofileItemWidget(model,
                                onTapBtnMapIconButton: () {
                              onTapBtnMapIconButton();
                            });
                          })))
                ]))));
  }

  /// Navigates to the affirmationsPageScreen when the action is triggered.
  onTapBtnMapIconButton() {
    Get.toNamed(
      AppRoutes.affirmationsPageScreen,
    );
  }
}
