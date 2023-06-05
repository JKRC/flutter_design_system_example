import 'package:ds_example/ds/ds_color.dart';
import 'package:ds_example/ds/ds_text_style.dart';
import 'package:flutter/material.dart';

import '../ds/ds_shadow.dart';
import '../ds/ds_spacing.dart';

class ShadowPage extends StatelessWidget {
  const ShadowPage({super.key});

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
              color: DsColor.background,
              boxShadow: [DsShadows.small],
            ),
            child: Center(
              child: Text(
                'Small Shadow',
                style: DsTextStyle.heading4.copyWith(
                  color: DsColor.onBackground,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(DsSpacing.extraLarge),
            padding: const EdgeInsets.all(DsSpacing.extraLarge),
            decoration: BoxDecoration(
              color: DsColor.background,
              boxShadow: [DsShadows.medium],
            ),
            child: Center(
              child: Text(
                'Medium Shadow',
                style: DsTextStyle.heading4.copyWith(
                  color: DsColor.onBackground,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(DsSpacing.extraLarge),
            padding: const EdgeInsets.all(DsSpacing.extraLarge),
            decoration: BoxDecoration(
              color: DsColor.background,
              boxShadow: [DsShadows.large],
            ),
            child: Center(
              child: Text(
                'Large Shadow',
                style: DsTextStyle.heading4.copyWith(
                  color: DsColor.onBackground,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
