// Import
import 'package:flutter/material.dart';
import 'package:plantchat/shared/dimensions.dart';

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
        return constraints.maxWidth > responsiveWidth ? mobileLayout : webLayout;
      },
    );
  }
}
