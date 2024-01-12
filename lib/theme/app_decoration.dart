import 'package:flutter/material.dart';
import 'package:getdrive_v11/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber100,
      );
  static BoxDecoration get fillAmber100 => BoxDecoration(
        color: appTheme.amber100.withOpacity(0.7),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100.withOpacity(0.5),
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50003,
      );
  static BoxDecoration get fillGray20003 => BoxDecoration(
        color: appTheme.gray20003,
      );
  static BoxDecoration get fillGray20004 => BoxDecoration(
        color: appTheme.gray20004,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow400,
      );
  static BoxDecoration get fillYellowF => BoxDecoration(
        color: appTheme.yellow6007f,
      );

  // Gradient decorations
  static BoxDecoration get gradientAmberToLimeB => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.blueGray500,
          width: 8.h,
          strokeAlign: strokeAlignOutside,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.2),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.amber200,
            appTheme.yellow400B5,
            appTheme.lime900B2,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.gray50001,
        border: Border.all(
          color: appTheme.blueGray500,
          width: 8.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineBluegray400 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.blueGray400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray500 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
        border: Border.all(
          color: appTheme.blueGray500,
          width: 8.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineBluegray5001 => BoxDecoration(
        color: appTheme.gray50003,
        border: Border.all(
          color: appTheme.blueGray500,
          width: 8.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineBluegray5002 => BoxDecoration(
        color: appTheme.gray100,
        border: Border.all(
          color: appTheme.blueGray500,
          width: 8.h,
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray20001,
        border: Border.all(
          color: appTheme.gray400,
          width: 2.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder48 => BorderRadius.circular(
        48.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        24.h,
      );
  static BorderRadius get roundedBorder4 => BorderRadius.circular(
        4.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
