import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/screens/menu/widgets/line.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      margin: const EdgeInsets.symmetric(vertical: 5.0),
      color: AppColors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Замовлення №123456',
                    style: AppTextStyles.textSmallBold(height: 19.6 / 14.00),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'від 6 січня 2023',
                    style: AppTextStyles.textLightMed(
                        height: 16.8 / 12.0, color: AppColors.black),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {
                    context.go('/order-screen');
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 16,
                  ))
            ],
          ),
          const SizedBox(height: 8),
          const Line(withPadding: false),
          const SizedBox(height: 8),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Сума замовлення',
                        style: AppTextStyles.textLightMed(height: 16.8 / 12.0),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '249 грн',
                        style: AppTextStyles.textSmallBold(height: 19.6 / 14.0),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Кешбек',
                        style: AppTextStyles.textLightMed(height: 16.8 / 12.0),
                      ),
                      const SizedBox(height: 5.0),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.yellow.withOpacity(0.06),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0))),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 5.0),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Assets.icons.gift,
                              width: 16.0,
                              height: 16.0,
                              color: AppColors.yellow,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              '+13 грн',
                              style: AppTextStyles.textSmallMed(
                                  height: 19.6 / 14.0),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
