import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/generated/locale_keys.g.dart';
import 'package:vandal/screens/menu/widgets/line.dart';
import 'package:vandal/screens/menu/widgets/setting_tab.dart';
import 'package:vandal/screens/menu/widgets/user_info_widget.dart';
import 'package:vandal/src/bloc/auth_bloc/auth_bloc.dart';
import 'package:vandal/utils/app_colors.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const UserInfoWidget(),
        const SizedBox(height: 30),
        Container(
          color: AppColors.white,
          child: Column(
            children: [
              SettingTab(
                text: LocaleKeys.my_orders.tr(),
                image: Assets.icons.order,
                onTap: () {
                  context.go('/orders');
                },
              ),
              const Line(),
              SettingTab(
                text: LocaleKeys.waiting_list.tr(),
                image: Assets.icons.waitingList,
                onTap: () {
                  context.go('/waiting-list');
                },
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Container(
          color: AppColors.white,
          child: Column(
            children: [
              SettingTab(
                text: LocaleKeys.personal_info.tr(),
                image: Assets.icons.person,
                onTap: () {
                  context.go('/account');
                },
              ),
              const Line(),
              SettingTab(
                text: LocaleKeys.my_reviews.tr(),
                image: Assets.icons.reviews,
                onTap: () {
                  context.go('/reviews');
                },
              ),
              const Line(),
              SettingTab(
                text: LocaleKeys.my_questions.tr(),
                image: Assets.icons.question,
                onTap: () {
                  context.go('/questions');
                },
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Container(
          color: AppColors.white,
          child: Column(
            children: [
              SettingTab(
                text: LocaleKeys.our_contacts.tr(),
                image: Assets.icons.map,
                onTap: () {
                  context.go('/contacts');
                },
              ),
              const Line(),
              SettingTab(
                text: LocaleKeys.settings.tr(),
                image: Assets.icons.setting,
                onTap: () {
                  context.go('/settings');
                },
              )
            ],
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Container(
          color: AppColors.white,
          child: SettingTab(
            text: LocaleKeys.logaut.tr(),
            image: Assets.icons.exit,
            onTap: () {
              context.read<AuthBloc>().add(AuthLogOutEvent(
                logOutFunction: () {
                  // LogOutUtil.logOut(context);
                  context.go('/');
                },
              ));
            },
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
