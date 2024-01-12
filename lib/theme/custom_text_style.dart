import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineLargeOnPrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get headlineSmallBluegray500 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallGray600 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get headlineSmallOnPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeBlack900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get labelLargeGray50006 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray50006,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRobotoOnPrimaryContainer =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.7),
        fontWeight: FontWeight.w800,
      );
  static get labelLargeRobotoOnPrimaryContainerSemiBold =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(0.7),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeff000000 => theme.textTheme.labelLarge!.copyWith(
        color: Color(0XFF000000),
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBluegray400 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray400,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumGray50006 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray50006.withOpacity(0.97),
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray70001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGray70002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray70002,
      );
  static get labelMediumMedium => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelMediumMulishBlack900 =>
      theme.textTheme.labelMedium!.mulish.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumMulishGray70002 =>
      theme.textTheme.labelMedium!.mulish.copyWith(
        color: appTheme.gray70002,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumRobotoGreenA700 =>
      theme.textTheme.labelMedium!.roboto.copyWith(
        color: appTheme.greenA700,
      );
  static get labelSmallBlack900 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.black900,
      );
  // Montserrat text style
  static get montserratGray50006 => TextStyle(
        color: appTheme.gray50006,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).montserrat;
  static get montserratGray50006Medium => TextStyle(
        color: appTheme.gray50006.withOpacity(0.97),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).montserrat;
  // Mulish text style
  static get mulishBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).mulish;
  // Roboto text style
  static get robotoOnPrimary => TextStyle(
        color: theme.colorScheme.onPrimary,
        fontSize: 4.fSize,
        fontWeight: FontWeight.w600,
      ).roboto;
  // Title text style
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMontserratBlack900 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.black900.withOpacity(0.8),
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumMulish => theme.textTheme.titleMedium!.mulish.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleMediumMulishBluegray50002 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.blueGray50002,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMulishBluegray50002Bold =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.blueGray50002.withOpacity(0.7),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMulishGray700 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.gray700,
      );
  static get titleMediumMulishGray70003 =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: appTheme.gray70003,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumRobotoFlexBluegray500 =>
      theme.textTheme.titleMedium!.robotoFlex.copyWith(
        color: appTheme.blueGray500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMontserratBlack900 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.black900.withOpacity(0.7),
      );
  static get titleSmallMontserratBlack900SemiBold =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.black900.withOpacity(0.7),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMontserratBlack900SemiBold_1 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMontserratBlack900_1 =>
      theme.textTheme.titleSmall!.montserrat.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallMulishBlack900 =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMulishOnPrimary =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallMulishOnPrimaryContainer =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallMulishOnPrimaryContainerExtraBold =>
      theme.textTheme.titleSmall!.mulish.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w800,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get robotoFlex {
    return copyWith(
      fontFamily: 'Roboto Flex',
    );
  }
}
