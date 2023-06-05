import 'package:ds_example/ds/ds_color.dart';
import 'package:ds_example/ds/ds_text_style.dart';
import 'package:flutter/material.dart';

import '../ds/ds_opacity.dart';
import '../ds/ds_spacing.dart';

class OpacityPage extends StatelessWidget {
  const OpacityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(DsSpacing.extraLarge),
            padding: const EdgeInsets.all(DsSpacing.extraLarge),
            color: DsColor.primary.withOpacity(DsOpacity.low),
            child: Center(
              child: Text(
                'Low Opacity',
                style: DsTextStyle.heading3.copyWith(
                  color: DsColor.onPrimary,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(DsSpacing.extraLarge),
            padding: const EdgeInsets.all(DsSpacing.extraLarge),
            color: DsColor.primary.withOpacity(DsOpacity.medium),
            child: Center(
              child: Text(
                'Medium Opacity',
                style: DsTextStyle.heading3.copyWith(
                  color: DsColor.onPrimary,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(DsSpacing.extraLarge),
            padding: const EdgeInsets.all(DsSpacing.extraLarge),
            color: DsColor.primary.withOpacity(DsOpacity.high),
            child: Center(
              child: Text(
                'High Opacity',
                style: DsTextStyle.heading3.copyWith(
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
