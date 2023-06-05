import 'package:ds_example/ds/ds_color.dart';
import 'package:ds_example/ds/ds_spacing.dart';
import 'package:ds_example/ds/ds_text_style.dart';
import 'package:flutter/material.dart';

class DsButton {
  static ButtonStyle primaryButtonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: DsColor.primary,
      foregroundColor: DsColor.onPrimary,
      textStyle: DsTextStyle.heading4.copyWith(color: DsColor.onPrimary),
      padding: const EdgeInsets.symmetric(
        vertical: DsSpacing.medium,
        horizontal: DsSpacing.large,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DsSpacing.small),
      ),
    );
  }

  static ButtonStyle secondaryButtonStyle() {
    return ElevatedButton.styleFrom(
      backgroundColor: DsColor.surface,
      foregroundColor: DsColor.onSurface,
      textStyle: DsTextStyle.heading4.copyWith(color: DsColor.onSurface),
      padding: const EdgeInsets.symmetric(
        vertical: DsSpacing.medium,
        horizontal: DsSpacing.large,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DsSpacing.small),
      ),
    );
  }
}
