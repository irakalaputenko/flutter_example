import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/generated/locale_keys.g.dart';
import 'package:vandal/screens/menu/orders/widgets/list_orders_widget.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

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
              LocaleKeys.my_orders.tr(),
              style: AppTextStyles.headlines1(height: 36.0 / 24.0),
            ),
          ),
          const SizedBox(height: 10),
          const ListOrders(),
          // NoOneOrder(),
        ]),
      ),
    );
  }
}
