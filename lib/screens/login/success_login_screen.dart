import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/generated/locale_keys.g.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class SuccessLoginScreen extends StatelessWidget {
  const SuccessLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () => context.go('/home'));

    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                Assets.images.logo,
                width: 175.0,
                fit: BoxFit.scaleDown,
              ),
            ),
            const SizedBox(height: 60),
            Center(
              child: SvgPicture.asset(
                Assets.icons.checkCircle,
                color: AppColors.yellow,
                width: 120.0,
                fit: BoxFit.scaleDown,
              ),
            ),
            const SizedBox(height: 30),
            Text(
              LocaleKeys.successful_code.tr(),
              style: AppTextStyles.headlines3(height: 22.4 / 16.0),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
          ],
        ),
      )),
    );
  }
}
