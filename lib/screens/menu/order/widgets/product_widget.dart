import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image(
                      image: Assets.images.product.provider(),
                      width: 64.0,
                      height: 64.0),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(Assets.icons.favorite,
                        color: AppColors.yellow, width: 24.0, height: 24.0),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Одноразова POD система Joyetech Vaal 1500 зі смаком бананового молока',
                      style: AppTextStyles.textSmallBold(
                        height: 16.8 / 12.00,
                      ),
                    ),
                    Text(
                      'Код товару: 1929',
                      style: AppTextStyles.textLightMed(
                        height: 16.8 / 12.00,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1 шт.',
                style: AppTextStyles.textLightMed(
                    height: 16.8 / 12.00, color: AppColors.black),
              ),
              Text(
                '339 ₴',
                style: AppTextStyles.headlines2bold(
                  height: 28.0 / 20.00,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
