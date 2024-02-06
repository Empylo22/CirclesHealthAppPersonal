import '../models/learn_item_model.dart';
import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LearnItemWidget extends StatelessWidget {
  LearnItemWidget(
    this.learnItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LearnItemModel learnItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Theme(
        data: ThemeData(
          canvasColor: Colors.transparent,
        ),
        child: RawChip(
          padding: EdgeInsets.symmetric(
            horizontal: 8.h,
            vertical: 5.v,
          ),
          showCheckmark: false,
          labelPadding: EdgeInsets.zero,
          label: Text(
            learnItemModelObj.learn!.value,
            style: TextStyle(
              color: appTheme.whiteA700,
              fontSize: 10.fSize,
              fontFamily: 'Switzer Variable',
              fontWeight: FontWeight.w700,
            ),
          ),
          selected: (learnItemModelObj.isSelected?.value ?? false),
          backgroundColor: Colors.transparent,
          selectedColor: appTheme.whiteA700.withOpacity(0.2),
          shape: (learnItemModelObj.isSelected?.value ?? false)
              ? RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.whiteA700,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                )
              : RoundedRectangleBorder(
                  side: BorderSide(
                    color: appTheme.whiteA700,
                    width: 1.h,
                  ),
                  borderRadius: BorderRadius.circular(
                    12.h,
                  ),
                ),
          onSelected: (value) {
            learnItemModelObj.isSelected!.value = value;
          },
        ),
      ),
    );
  }
}
