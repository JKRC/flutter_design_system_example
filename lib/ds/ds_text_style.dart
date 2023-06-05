import 'package:flutter/material.dart';

import 'ds_color.dart';
import 'ds_font_size.dart';

abstract class DsTextStyle {
  // Headings
  static const TextStyle heading1 = TextStyle(
    fontSize: DsFontSize.extraLarge,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle heading2 = TextStyle(
    fontSize: DsFontSize.large,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle heading3 = TextStyle(
    fontSize: DsFontSize.medium,
    fontWeight: FontWeight.bold,
  );

  // Headline 4
  static const TextStyle heading4 = TextStyle(
    fontSize: DsFontSize.small,
    fontWeight: FontWeight.bold,
  );

  // Body Text
  static const TextStyle bodyText = TextStyle(
    fontSize: DsFontSize.small,
  );

  // Custom Text Styles
  static const TextStyle errorText = TextStyle(
    fontSize: DsFontSize.extraSmall,
    color: DsColor.errorDark,
    fontWeight: FontWeight.bold,
  );
}
