import '../models/frame8_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Frame8ItemWidget extends StatelessWidget {
  Frame8ItemWidget(
    this.frame8ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Frame8ItemModel frame8ItemModelObj;

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
            right: 8.h,
            bottom: 9.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            frame8ItemModelObj.settings!.value,
            style: TextStyle(
              color: appTheme.black900,
              fontSize: 15.fSize,
              fontFamily: 'Switzer Variable',
              fontWeight: FontWeight.w500,
            ),
          ),
          avatar: CustomImageView(
            imagePath: ImageConstant.imgSettings,
            height: 20.adaptSize,
            width: 20.adaptSize,
            margin: EdgeInsets.only(right: 2.h),
          ),
          selected: (frame8ItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: theme.colorScheme.primary,
          shape: (frame8ItemModelObj.isSelected?.value ?? false)
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
            frame8ItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
