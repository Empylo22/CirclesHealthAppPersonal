import '../controller/explore_group_activities_tab_container_controller.dart';
import '../models/dailymeditation_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DailymeditationItemWidget extends StatelessWidget {
  DailymeditationItemWidget(
    this.dailymeditationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DailymeditationItemModel dailymeditationItemModelObj;

  var controller = Get.find<ExploreGroupActivitiesTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 168.h,
      child: Align(
        alignment: Alignment.topRight,
        child: SizedBox(
          height: 219.v,
          width: 168.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 212.v,
                  width: 168.h,
                  decoration: AppDecoration.outlineGray,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: dailymeditationItemModelObj.image1!.value,
                          height: 168.adaptSize,
                          width: 168.adaptSize,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 49.h,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 5.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 3.v,
                          ),
                          decoration: AppDecoration.fillIndigo.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder10,
                          ),
                          child: Obx(
                            () => Text(
                              dailymeditationItemModelObj.text1!.value,
                              style:
                                  CustomTextStyles.labelMediumSwitzerVariable,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(right: 68.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 100.h,
                        child: Obx(
                          () => Text(
                            dailymeditationItemModelObj.text2!.value,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ),
                      Obx(
                        () => Text(
                          dailymeditationItemModelObj.text3!.value,
                          style: CustomTextStyles
                              .labelMediumSwitzerVariableLime800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
