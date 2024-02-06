import '../models/frame4_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame4ItemWidget extends StatelessWidget {
  Frame4ItemWidget(
    this.frame4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame4ItemModel frame4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.only(
            top: 9.v,
            right: 10.h,
            bottom: 9.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            frame4ItemModelObj.settings!.value,
            style: TextStyle(
              color: appTheme.black900,
              fontSize: 14.fSize,
              fontFamily: 'Switzer Variable',
              fontWeight: FontWeight.w400,
            ),
          ),
          avatar: CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(right: 2.h),
          ),
          selected: (frame4ItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape: (frame4ItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide.none,
                  borderRadius: BorderRadius.circular(
                    19.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.black900,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    19.h,
                  ),
                ),
          onSelected: (value) {
            frame4ItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
