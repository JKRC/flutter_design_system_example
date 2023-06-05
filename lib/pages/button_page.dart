import 'package:ds_example/ds/ds_text_style.dart';
import 'package:flutter/material.dart';

import '../ds/ds_button.dart';
import '../ds/ds_spacing.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Primary button action
            },
            style: DsButton.primaryButtonStyle(),
            child: const Text('Primary Button'),
          ),
          const SizedBox(height: DsSpacing.medium),
          ElevatedButton(
            onPressed: () {
              // Secondary button action
            },
            style: DsButton.secondaryButtonStyle(),
            child: const Text('Secondary Button'),
          ),
        ],
      ),
    );
  }
}
