import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding:
          const EdgeInsets.only(right: 10.0, left: 10.0, top: 10, bottom: 20),
      decoration: const BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Image(
                  image: Assets.images.product2.provider(),
                  width: width * 0.35,
                  height: width * 0.35,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(Assets.icons.favorite,
                    color: AppColors.yellow, width: 24.0, height: 24.0),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.icons.fullStar,
                  color: AppColors.yellow, width: 12.0, height: 12.0),
              SvgPicture.asset(Assets.icons.fullStar,
                  color: AppColors.yellow, width: 12.0, height: 12.0),
              SvgPicture.asset(Assets.icons.fullStar,
                  color: AppColors.yellow, width: 12.0, height: 12.0),
              SvgPicture.asset(Assets.icons.fullStar,
                  color: AppColors.yellow, width: 12.0, height: 12.0),
              SvgPicture.asset(Assets.icons.star,
                  color: AppColors.grey, width: 12.0, height: 12.0),
              const SizedBox(width: 10.0),
              Text(
                '35',
                style: AppTextStyles.textLightMed(
                    height: 16.0 / 12.0, color: AppColors.black),
              )
            ],
          ),
          Text('Набір Chaser ForPods 30 мл',
              style: AppTextStyles.textLightMed(
                  height: 16.0 / 12.0, color: AppColors.black)),
          const SizedBox(height: 10.0),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('339 ₴',
                style: AppTextStyles.headlines3bold(height: 22.0 / 16.0)),
          ),
        ],
      ),
    );
  }
}
