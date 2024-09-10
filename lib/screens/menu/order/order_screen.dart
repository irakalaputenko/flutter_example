import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/generated/locale_keys.g.dart';
import 'package:vandal/screens/menu/order/widgets/product_widget.dart';
import 'package:vandal/screens/menu/widgets/line.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          IconButton(
            onPressed: () {
              context.go('/orders');
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Замовлення № 123456',
              style: AppTextStyles.headlines1(height: 36.0 / 24.0),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'від 6 січня 2023',
              style: AppTextStyles.textSmallReg(height: 19.6 / 14.0),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Сума замовлення',
                  style: AppTextStyles.headlines3bold(height: 22.4 / 16.0),
                ),
                Text(
                  '1017 ₴',
                  style: AppTextStyles.headlines2bold(height: 28.0 / 20.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            color: AppColors.white,
            child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: ((context, index) {
                return const ProductWidget();
              }),
              separatorBuilder: (context, index) {
                return const Line(
                  withPadding: false,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(0.0),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(AppColors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  )),
                  side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: AppColors.yellow))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Center(
                  child: Text(
                    LocaleKeys.repeat_order.tr(),
                    style: AppTextStyles.textSmallMed(
                        height: 19.6 / 14.0, color: AppColors.yellow),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
