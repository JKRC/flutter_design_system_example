import 'package:ds_example/ds/ds_spacing.dart';
import 'package:flutter/material.dart';

import '../ds/ds_text_style.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Heading 1',
              style: DsTextStyle.heading1,
            ),
            SizedBox(height: DsSpacing.large),
            Text(
              'Heading 2',
              style: DsTextStyle.heading2,
            ),
            SizedBox(height: DsSpacing.large),
            Text(
              'Heading 3',
              style: DsTextStyle.heading3,
            ),
            SizedBox(height: DsSpacing.large),
            Text(
              'Body Text',
              style: DsTextStyle.bodyText,
            ),
            SizedBox(height: DsSpacing.large),
            Text(
              'Error Text',
              style: DsTextStyle.errorText,
            ),
          ],
        ),
      ),
    );
  }
}
