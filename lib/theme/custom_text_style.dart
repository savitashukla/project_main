import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray100 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray100,
      );
  static get bodyLargeGray100 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray100,
      );
  static get bodyLargeYellow400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.yellow400,
        fontSize: 16.fSize,
      );
  static get bodyLargeffffffff => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFFFFFFFF),
      );
  static get bodyMediumBluegray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumMulishBluegray500 =>
      theme.textTheme.bodyMedium!.mulish.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumffcfcfcf => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFCFCFCF),
      );
  static get bodyMediumfff0f757 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFF0F757),
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallYellow400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.yellow400,
      );
  // Display text style
  static get displayMediumMedium => theme.textTheme.displayMedium!.copyWith(
        fontSize: 48.fSize,
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineSmallRegular => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallffffffff => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 25.fSize,
        fontWeight: FontWeight.w400,
      );
  // Title text style
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray800,
        fontSize: 18.fSize,
      );
  static get titleMediumGray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray600,
        fontSize: 18.fSize,
      );
  static get titleMediumGreen300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green300,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumMulishOnError =>
      theme.textTheme.titleMedium!.mulish.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnError => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleMediumOnError18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumPink300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink300,
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleMediumSecondaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumff63d991 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF63D991),
        fontSize: 18.fSize,
      );
  static get titleMediumff747574 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF747574),
        fontSize: 18.fSize,
      );
  static get titleMediumffffffff => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 18.fSize,
      );
  static get titleMediumffffffffBold => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFFFFF),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
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
}
