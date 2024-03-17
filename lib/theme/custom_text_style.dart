import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001.withOpacity(0.6),
      );
  static get bodyMediumGray80001Regular => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001.withOpacity(0.6),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnPrimaryRegular => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumRed500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.red500,
      );
  static get bodyMediumRegular => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumff000000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get bodySmallBluegray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBluegray40001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 12.fSize,
      );
  static get bodySmallBluegray40001Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBluegray40001_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray40001,
      );
  static get bodySmallBluegray40012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 12.fSize,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallPrimary12 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 12.fSize,
      );
  static get bodySmallTeal600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal600,
        fontSize: 12.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Headline text style
  static get headlineLarge30 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 30.fSize,
      );
  static get headlineLargeInter =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        fontSize: 30.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineLargeInterWhiteA700 =>
      theme.textTheme.headlineLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumSwitzerVariable =>
      theme.textTheme.headlineMedium!.switzerVariable.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallLibreBaskerville =>
      theme.textTheme.headlineSmall!.libreBaskerville.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallSwitzerVariable =>
      theme.textTheme.headlineSmall!.switzerVariable.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallSwitzerVariableOnPrimary =>
      theme.textTheme.headlineSmall!.switzerVariable.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w300,
      );
  static get headlineSmallSwitzerVariableWhiteA700 =>
      theme.textTheme.headlineSmall!.switzerVariable.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get labelLargeLibreBaskervilleff000000 =>
      theme.textTheme.labelLarge!.libreBaskerville.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSwitzerVariable =>
      theme.textTheme.labelLarge!.switzerVariable.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSwitzerVariableBlack900 =>
      theme.textTheme.labelLarge!.switzerVariable.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeSwitzerVariableWhiteA700 =>
      theme.textTheme.labelLarge!.switzerVariable.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelMediumOnPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumSwitzerVariable =>
      theme.textTheme.labelMedium!.switzerVariable.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelMediumSwitzerVariableLime800 =>
      theme.textTheme.labelMedium!.switzerVariable.copyWith(
        color: appTheme.lime800,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumSwitzerVariableWhiteA700 =>
      theme.textTheme.labelMedium!.switzerVariable.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  // Title text style
  static get titleLargeLibreBaskerville =>
      theme.textTheme.titleLarge!.libreBaskerville.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeLibreBaskervilleff000000 =>
      theme.textTheme.titleLarge!.libreBaskerville.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeSwitzerVariable =>
      theme.textTheme.titleLarge!.switzerVariable.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSwitzerVariableGray900 =>
      theme.textTheme.titleLarge!.switzerVariable.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSwitzerVariableOnPrimary =>
      theme.textTheme.titleLarge!.switzerVariable.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSwitzerVariableWhiteA700 =>
      theme.textTheme.titleLarge!.switzerVariable.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSwitzerVariable_1 =>
      theme.textTheme.titleLarge!.switzerVariable;
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLibreBaskervilleff000000 =>
      theme.textTheme.titleMedium!.libreBaskerville.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallGray80002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80002,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallLibreBaskerville =>
      theme.textTheme.titleSmall!.libreBaskerville.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleSmallSwitzerVariable =>
      theme.textTheme.titleSmall!.switzerVariable;
  static get titleSmallSwitzerVariable15 =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallSwitzerVariableErrorContainer =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSwitzerVariableGray80002 =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        color: appTheme.gray80002,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSwitzerVariableOnPrimary =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSwitzerVariablePrimary =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSwitzerVariableSecondaryContainer =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleSmallSwitzerVariableSemiBold =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSwitzerVariableWhiteA700 =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSwitzerVariable_1 =>
      theme.textTheme.titleSmall!.switzerVariable;
  static get titleSmallSwitzerVariableff00a99d =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        color: Color(0XFF00A99D),
      );
  static get titleSmallSwitzerVariableff00a99dSemiBold =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        color: Color(0XFF00A99D),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallSwitzerVariableff191919 =>
      theme.textTheme.titleSmall!.switzerVariable.copyWith(
        color: Color(0XFF191919),
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallff191919 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFF191919),
      );
  static get titleSmallffffb347 => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XFFFFB347),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get switzerVariable {
    return copyWith(
      fontFamily: 'Switzer Variable',
    );
  }

  TextStyle get libreBaskerville {
    return copyWith(
      fontFamily: 'Libre Baskerville',
    );
  }
}
