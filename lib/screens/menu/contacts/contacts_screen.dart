import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/generated/locale_keys.g.dart';
import 'package:vandal/screens/menu/widgets/line.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

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
              LocaleKeys.our_contacts.tr(),
              style: AppTextStyles.headlines1(height: 36.0 / 24.0),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Ми на звязку з 8:55 ранку до 21:05 вечора. Телефонуйте! Будемо раді допомогти.',
              style: AppTextStyles.headlines3(height: 22.4 / 16.0),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.phoneCall,
                      width: 32.0,
                      height: 32.0,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '0800 33 11 31',
                      style: AppTextStyles.textNormalMed(height: 25.6 / 16.0),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.viber,
                      width: 32.0,
                      height: 32.0,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Звязатись через Viber',
                      style: AppTextStyles.textNormalMed(height: 25.6 / 16.0),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset(
                      Assets.icons.telegram,
                      width: 32.0,
                      height: 32.0,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Звязатись через Telegram',
                      style: AppTextStyles.textNormalMed(height: 25.6 / 16.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(20.0),
            color: AppColors.white,
            child: Column(children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Виберіть своє місто',
                      style: AppTextStyles.textSmallMed(height: 19.6 / 14.0),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 16,
                        ))
                  ],
                ),
              ),
              const Line(withPadding: false),
              const SizedBox(height: 15.0),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Івано-Франківськ, вул. Галицька, 47',
                          style:
                              AppTextStyles.textSmallBold(height: 19.6 / 14.0),
                        ),
                        const SizedBox(height: 5.0),
                        Text(
                          'Навпроти платної парковки біля Універмагу',
                          style:
                              AppTextStyles.textSmallReg(height: 19.6 / 14.0),
                        ),
                        const SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Щоденно',
                                  style: AppTextStyles.textLightMed(
                                      height: 16.8 / 12.0),
                                ),
                                Text(
                                  '10:00-18:00',
                                  style: AppTextStyles.textLightBold(
                                      height: 16.8 / 12.0,
                                      color: AppColors.black),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  Assets.icons.phoneCall,
                                  width: 24.0,
                                  height: 24.0,
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '(073) 414-20-30',
                                  style: AppTextStyles.textSmallMed(
                                      height: 19.6 / 14.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                      ],
                    );
                  })
            ]),
          )
        ]),
      ),
    );
  }
}
