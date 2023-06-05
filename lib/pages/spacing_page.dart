import 'package:ds_example/ds/ds_color.dart';
import 'package:ds_example/ds/ds_text_style.dart';
import 'package:flutter/material.dart';

import '../ds/ds_spacing.dart';

class SpacingPage extends StatelessWidget {
  const SpacingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DsSpacing.large),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _SpacingItem(
            title: "Extra Small",
            spacing: DsSpacing.extraSmall,
            color: DsColor.error,
          ),
          SizedBox(height: DsSpacing.medium),
          _SpacingItem(
            title: "Small",
            spacing: DsSpacing.small,
            color: DsColor.warning,
          ),
          SizedBox(height: DsSpacing.medium),
          _SpacingItem(
            title: "Medium",
            spacing: DsSpacing.medium,
            color: DsColor.success,
          ),
          SizedBox(height: DsSpacing.medium),
          _SpacingItem(
            title: "Extra Large",
            spacing: DsSpacing.extraLarge,
            color: DsColor.primary,
          ),
        ],
      ),
    );
  }
}

class _SpacingItem extends StatelessWidget {
  final String title;
  final double spacing;
  final Color color;
  const _SpacingItem({
    required this.title,
    required this.spacing,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: DsSpacing.small),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: DsTextStyle.heading3,
          ),
          const SizedBox(height: DsSpacing.small),
          Container(
            height: spacing,
            color: color,
          ),
        ],
      ),
    );
  }
}
