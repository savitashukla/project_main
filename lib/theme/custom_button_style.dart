import 'dart:ui';
import 'package:savita_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray800,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientBlueToBlueDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(1.0, 1),
          colors: [
            appTheme.blue200,
            appTheme.blue900,
          ],
        ),
      );

  // Outline button style
  static ButtonStyle get outlinePrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.onError,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryTL10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryTL101 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.pink500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  static ButtonStyle get outlinePrimaryTL24 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.yellow400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.h),
        ),
        shadowColor: theme.colorScheme.primary,
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
