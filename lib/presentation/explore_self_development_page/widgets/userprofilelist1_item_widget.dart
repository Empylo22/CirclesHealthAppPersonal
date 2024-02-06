import '../controller/explore_self_development_controller.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  var controller = Get.find<ExploreSelfDevelopmentController>();

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 168.h,
      child: GestureDetector(
        onTap: () {
          onTapUserProfile!.call();
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 7.v),
          decoration: AppDecoration.outlineGray,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 168.adaptSize,
                width: 168.adaptSize,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath: userprofilelist1ItemModelObj.image1!.value,
                        height: 168.adaptSize,
                        width: 168.adaptSize,
                        radius: BorderRadius.circular(
                          20.h,
                        ),
                        alignment: Alignment.center,
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
                        decoration: AppDecoration.fillLime.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Obx(
                          () => Text(
                            userprofilelist1ItemModelObj.text1!.value,
                            style: CustomTextStyles.labelMediumSwitzerVariable,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5.v),
              Obx(
                () => Text(
                  userprofilelist1ItemModelObj.text2!.value,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 10.v),
              Obx(
                () => Text(
                  userprofilelist1ItemModelObj.text3!.value,
                  style: CustomTextStyles.labelMediumSwitzerVariableLime800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
