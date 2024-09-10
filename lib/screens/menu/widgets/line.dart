import 'package:flutter/material.dart';
import 'package:vandal/utils/app_colors.dart';

class Line extends StatelessWidget {
  const Line({this.withPadding = true, super.key});

  final bool withPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: withPadding ? 20.0 : 0.0),
      height: 1.0,
      width: double.infinity,
      color: AppColors.grey3,
    );
  }
}
