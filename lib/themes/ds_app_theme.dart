import 'package:ds_example/ds/ds_border_radius.dart';
import 'package:ds_example/ds/ds_shadow.dart';
import 'package:flutter/material.dart';

import '../ds/ds_color.dart';
import '../ds/ds_text_style.dart';

class DsAppTheme {
  // Components
  static ThemeData buildTheme() {
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: DsColor.primary,
        onPrimary: DsColor.onPrimary,
        secondary: DsColor.secondary,
        onSecondary: DsColor.onSecondary,
        tertiary: DsColor.tertiary,
        onTertiary: DsColor.onTertiary,
        error: DsColor.error,
        onError: DsColor.onError,
        background: DsColor.background,
        onBackground: DsColor.background,
        surface: DsColor.surface,
        onSurface: DsColor.onSurface,
      ),
      textTheme: const TextTheme(
        displayLarge: DsTextStyle.heading1,
        displayMedium: DsTextStyle.heading2,
        bodyLarge: DsTextStyle.bodyText,
      ),
    );
  }

  static BoxDecoration buildRoundedBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(DsBorderRadius.medium),
      color: DsColor.primary,
      boxShadow: [DsShadows.medium],
    );
  }
}
