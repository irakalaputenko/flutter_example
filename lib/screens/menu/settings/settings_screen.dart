import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/generated/locale_keys.g.dart';
import 'package:vandal/screens/menu/settings/language_bottom_sheet.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          IconButton(
            onPressed: () {
              context.go('/menu');
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Налаштування',
              style: AppTextStyles.headlines1(height: 36.0 / 24.0),
            ),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(20.0),
              color: AppColors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.language.tr(),
                        style: AppTextStyles.textSmallMed(height: 19.6 / 14.0),
                      ),
                      const SizedBox(height: 10),
                      Text('Українська',
                          style:
                              AppTextStyles.textLightMed(height: 16.8 / 12.0)),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        LanguageBottomSheet.show(context);
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        size: 16,
                      ))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
