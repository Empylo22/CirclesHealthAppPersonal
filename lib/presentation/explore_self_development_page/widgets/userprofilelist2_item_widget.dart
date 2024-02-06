import '../controller/explore_self_development_controller.dart';
import '../models/userprofilelist2_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:empylo/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist2ItemWidget extends StatelessWidget {
  Userprofilelist2ItemWidget(
    this.userprofilelist2ItemModelObj, {
    Key? key,
    this.onTapBtnMapButton,
  }) : super(
          key: key,
        );

  Userprofilelist2ItemModel userprofilelist2ItemModelObj;

  var controller = Get.find<ExploreSelfDevelopmentController>();

  VoidCallback? onTapBtnMapButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 172.adaptSize,
      width: 172.adaptSize,
      margin: EdgeInsets.only(top: 1.v),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofilelist2ItemModelObj.todayImage!.value,
              height: 172.adaptSize,
              width: 172.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                top: 5.v,
                right: 6.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      right: 4.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.v,
                            bottom: 3.v,
                          ),
                          child: Obx(
                            () => Text(
                              userprofilelist2ItemModelObj.todayText!.value,
                              style: CustomTextStyles.bodySmallWhiteA700,
                            ),
                          ),
                        ),
                        CustomIconButton(
                          height: 23.adaptSize,
                          width: 23.adaptSize,
                          padding: EdgeInsets.all(5.h),
                          decoration: IconButtonStyleHelper.fillWhiteA,
                          onTap: () {
                            onTapBtnMapButton!.call();
                          },
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMap,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.v),
                  SizedBox(
                    width: 160.h,
                    child: Obx(
                      () => Text(
                        userprofilelist2ItemModelObj.dreamsText!.value,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleSmallWhiteA700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
