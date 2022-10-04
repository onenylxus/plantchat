// Import
import 'package:flutter/material.dart';
import 'package:plantchat/constants/palette.dart';

// Empty screen class
class EmptyScreen extends StatelessWidget {
  const EmptyScreen({
    super.key,
    this.color = Palette.white,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(color: color);
  }
}
