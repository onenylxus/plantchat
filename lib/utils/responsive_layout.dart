// Import
import 'package:flutter/material.dart';
import 'package:plantchat/constants/dimens.dart';

// Responsive layout class
class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;

  const ResponsiveLayout({
    super.key,
    required this.mobileLayout,
    required this.webLayout,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > Dimens.responsiveWidth) {
          return webLayout;
        }
        return mobileLayout;
      },
    );
  }
}
