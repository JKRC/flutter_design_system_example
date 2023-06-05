import 'package:ds_example/ds/ds_divider_thickness.dart';
import 'package:ds_example/ds/ds_shadow.dart';
import 'package:ds_example/ds/ds_sizing.dart';
import 'package:flutter/material.dart';

import '../ds/ds_color.dart';
import '../ds/ds_spacing.dart';
import '../ds/ds_text_style.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(DsSpacing.large),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: DsSpacing.medium,
          ),
          child: Column(
            children: const [
              _ColorItem('Primary', DsColor.primary),
              _ColorItem('Secondary', DsColor.secondary),
              _ColorItem('Tertiary', DsColor.tertiary),
              _Divider(),
              _ColorItem('On Primary', DsColor.onPrimary),
              _ColorItem('On Secondary', DsColor.onSecondary),
              _ColorItem('On Tertiary', DsColor.onTertiary),
              _Divider(),
              _ColorItem('Success', DsColor.success),
              _ColorItem('Success Light', DsColor.successLight),
              _ColorItem('Success Dark', DsColor.successDark),
              _Divider(),
              _ColorItem('Error', DsColor.error),
              _ColorItem('Error Light', DsColor.errorLight),
              _ColorItem('Error Dark', DsColor.errorDark),
              _Divider(),
              _ColorItem('On Error', DsColor.onError),
              _ColorItem('On Error Light', DsColor.onErrorLight),
              _ColorItem('On Error Dark', DsColor.onErrorDark),
              _Divider(),
              _ColorItem('Warning', DsColor.warning),
              _ColorItem('Warning Light', DsColor.warningLight),
              _ColorItem('Warning Dark', DsColor.warningDark),
              _Divider(),
              _ColorItem('Background', DsColor.background),
              _ColorItem('Surface', DsColor.surface),
              _ColorItem('On Surface', DsColor.onSurface),
            ],
          ),
        ),
      ],
    );
  }
}

class _ColorItem extends StatelessWidget {
  final String title;
  final Color color;
  const _ColorItem(this.title, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: DsSpacing.small),
      child: Row(
        children: [
          Container(
            width: DsSizing.mediumLarge,
            height: DsSizing.mediumLarge,
            decoration: BoxDecoration(
              color: color,
              boxShadow: [DsShadows.medium],
            ),
          ),
          const SizedBox(width: DsSpacing.small),
          Text(
            title,
            style: DsTextStyle.bodyText,
          ),
        ],
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: DsSpacing.medium,
      ),
      child: Divider(
        thickness: DsDividerThickness.medium,
      ),
    );
  }
}
