import 'package:ds_example/ds/ds_color.dart';
import 'package:ds_example/ds/ds_spacing.dart';
import 'package:ds_example/ds/ds_text_style.dart';
import 'package:flutter/material.dart';

import '../ds/ds_sizing.dart';

class SizingPage extends StatelessWidget {
  const SizingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DsSizing.large),
      child: GridView.count(
        crossAxisCount: 2,
        children: const [
          _SizingElement(
            title: 'Extra Small',
            size: DsSizing.smallest,
            color: DsColor.primary,
          ),
          _SizingElement(
            size: DsSizing.small,
            color: DsColor.error,
            title: 'Small',
          ),
          _SizingElement(
            size: DsSizing.mediumSmall,
            color: DsColor.success,
            title: 'Medium Small',
          ),
          _SizingElement(
            size: DsSizing.medium,
            color: DsColor.secondary,
            title: 'Medium',
          ),
          _SizingElement(
              size: DsSizing.mediumLarge,
              color: DsColor.tertiary,
              title: 'Medium Large'),
          _SizingElement(
            size: DsSizing.large,
            color: DsColor.warning,
            title: 'Large',
          ),
          _SizingElement(
            size: DsSizing.larger,
            color: DsColor.successDark,
            title: 'Extra Large',
          ),
        ],
      ),
    );
  }
}

class _SizingElement extends StatelessWidget {
  final String title;
  final double size;
  final Color color;

  const _SizingElement({
    required this.title,
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title, style: DsTextStyle.bodyText),
        const SizedBox(height: DsSpacing.medium),
        Container(
          width: size,
          height: size,
          color: color,
        ),
      ],
    );
  }
}
