import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class SettingTab extends StatelessWidget {
  const SettingTab(
      {required this.text,
      required this.image,
      required this.onTap,
      super.key});
  final String text;
  final String image;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SvgPicture.asset(
              image,
              width: 24.0,
              height: 24.0,
              color: AppColors.grey,
            ),
            const SizedBox(
              width: 20.0,
            ),
            Text(
              text,
              style: AppTextStyles.textSmallMed(height: 19.6 / 14.00),
            )
          ])),
    );
  }
}
