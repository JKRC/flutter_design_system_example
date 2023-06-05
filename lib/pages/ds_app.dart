import 'package:ds_example/pages/feature_page.dart';
import 'package:flutter/material.dart';

import '../ds/ds_color.dart';
import '../ds/ds_spacing.dart';
import '../ds/ds_text_style.dart';
import '../themes/ds_app_theme.dart';
import 'border_radius_page.dart';
import 'button_page.dart';
import 'color_page.dart';
import 'opacity_page.dart';
import 'shadow_page.dart';
import 'sizing_page.dart';
import 'spacing_page.dart';
import 'text_page.dart';

class DsApp extends StatelessWidget {
  const DsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design System',
      theme: DsAppTheme.buildTheme(),
      home: const DesignSystemPage(),
    );
  }
}

class DesignSystemPage extends StatefulWidget {
  const DesignSystemPage({super.key});

  @override
  State<DesignSystemPage> createState() => _DesignSystemPageState();
}

class _DesignSystemPageState extends State<DesignSystemPage> {
  int _currentPageIndex = 0;

  final _pages = const [
    _Page(name: "Colors", page: ColorPage()),
    _Page(name: 'Texts', page: TextPage()),
    _Page(name: 'Spacings', page: Center(child: SpacingPage())),
    _Page(name: 'Shadows', page: ShadowPage()),
    _Page(name: 'Opacities', page: OpacityPage()),
    _Page(name: 'Border Radius', page: BorderRadiusPage()),
    _Page(name: 'Sizes', page: SizingPage()),
    _Page(name: 'Buttons', page: ButtonPage()),
    _Page(name: 'Feature Example', page: BankAppPage()),
  ];

  void _selectPage(int index) {
    setState(() {
      _currentPageIndex = index;
    });
    Navigator.pop(context); // Close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DsColor.background,
      appBar: AppBar(
        title: Text(
          _pages[_currentPageIndex].name,
          style: DsTextStyle.heading3.copyWith(
            color: DsColor.onPrimary,
          ),
        ),
        backgroundColor: DsColor.primary,
      ),
      drawer: Drawer(
        backgroundColor: DsColor.background,
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: DsSpacing.large),
              Text(
                "Examples",
                style: DsTextStyle.heading2.copyWith(
                  color: DsColor.onBackground,
                ),
              ),
              const SizedBox(height: DsSpacing.medium),
              Flexible(
                child: ListView.builder(
                  itemCount: _pages.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        _pages[index].name,
                        style: DsTextStyle.heading4.copyWith(
                          color: DsColor.onBackground,
                        ),
                      ),
                      onTap: () => _selectPage(index),
                      selected: index == _currentPageIndex,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: _pages[_currentPageIndex].page,
    );
  }
}

class _Page {
  const _Page({required this.name, required this.page});

  final String name;
  final Widget page;
}
