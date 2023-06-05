import 'package:ds_example/ds/ds_color.dart';
import 'package:ds_example/ds/ds_spacing.dart';
import 'package:flutter/material.dart';

import '../ds/ds_border_radius.dart';
import '../ds/ds_text_style.dart';

class BorderRadiusPage extends StatelessWidget {
  const BorderRadiusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(DsSpacing.extraLarge),
            padding: const EdgeInsets.all(DsSpacing.extraLarge),
            decoration: BoxDecoration(
              color: DsColor.primary,
              borderRadius: BorderRadius.circular(DsBorderRadius.small),
            ),
            child: Center(
              child: Text(
                'Small Border Radius',
                textAlign: TextAlign.center,
                style: DsTextStyle.heading4.copyWith(
                  color: DsColor.onPrimary,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(DsSpacing.extraLarge),
            padding: const EdgeInsets.all(DsSpacing.extraLarge),
            decoration: BoxDecoration(
              color: DsColor.primary,
              borderRadius: BorderRadius.circular(DsBorderRadius.medium),
            ),
            child: Center(
              child: Text(
                'Medium Border Radius',
                textAlign: TextAlign.center,
                style: DsTextStyle.heading4.copyWith(
                  color: DsColor.onPrimary,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(DsSpacing.extraLarge),
            padding: const EdgeInsets.all(DsSpacing.extraLarge),
            decoration: BoxDecoration(
              color: DsColor.primary,
              borderRadius: BorderRadius.circular(DsBorderRadius.large),
            ),
            child: Center(
              child: Text(
                'Large Border Radius',
                textAlign: TextAlign.center,
                style: DsTextStyle.heading4.copyWith(
                  color: DsColor.onPrimary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
