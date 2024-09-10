import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
              image: Assets.images.avatarPng.provider(),
              width: 40.0,
              height: 40.0),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Євгеній У.',
                style: AppTextStyles.textSmallReg(height: 19.6 / 14.00),
              ),
              Text(
                '240 бонусів',
                style: AppTextStyles.headlines3(height: 22.4 / 16.00),
              )
            ],
          ),
          const Spacer(),
          SvgPicture.asset(
            Assets.icons.notification,
            width: 24.0,
            height: 24.0,
            color: AppColors.grey,
          ),
        ],
      ),
    );
  }
}
