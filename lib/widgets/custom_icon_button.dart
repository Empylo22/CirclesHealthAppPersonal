import 'package:empylo/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.gray300,
                  borderRadius: BorderRadius.circular(20.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGray => BoxDecoration(
        borderRadius: BorderRadius.circular(28.h),
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineSecondaryContainer => BoxDecoration(
        borderRadius: BorderRadius.circular(30.h),
        border: Border.all(
          color: theme.colorScheme.secondaryContainer,
          width: 3.h,
        ),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal50,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillTealTL20 => BoxDecoration(
        color: appTheme.teal100,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange100,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillTealTL10 => BoxDecoration(
        color: appTheme.teal50,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillGrayTL10 => BoxDecoration(
        color: appTheme.gray300,
        borderRadius: BorderRadius.circular(10.h),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(11.h),
      );
  static BoxDecoration get fillGrayTL20 => BoxDecoration(
        color: appTheme.gray300.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(17.h),
      );
  static BoxDecoration get outlineGrayTL34 => BoxDecoration(
        color: appTheme.teal100,
        borderRadius: BorderRadius.circular(34.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray40033,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteATL18 => BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(18.h),
      );
  static BoxDecoration get fillPrimaryTL12 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.h),
      );
}
