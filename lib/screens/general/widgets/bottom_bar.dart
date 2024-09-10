import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vandal/gen/assets.gen.dart';
import 'package:vandal/screens/general/general_screen.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    required this.tab,
    required this.onPressed,
    super.key,
  });

  final MainPageTab tab;
  final void Function(MainPageTab) onPressed;

  @override
  Widget build(BuildContext context) {
    //TODO: Refactor to use BottomAppBar instead of custom Stack
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: AppColors.white,
            ),
            child: SafeArea(
              top: false,
              child: SizedBox(
                height: 56,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: _ItemWidget(
                        selected: MainPageTab.home == tab,
                        title: 'Головна',
                        image: SvgPicture.asset(
                          Assets.icons.home,
                          color: AppColors.black,
                        ),
                        selectedImage: SvgPicture.asset(
                          Assets.icons.home,
                          color: AppColors.yellow,
                        ),
                        onTap: () => onPressed(MainPageTab.home),
                      ),
                    ),
                    Expanded(
                      child: _ItemWidget(
                        selected: MainPageTab.catalog == tab,
                        title: 'Каталог',
                        image: SvgPicture.asset(
                          Assets.icons.catalog,
                          color: AppColors.black,
                        ),
                        selectedImage: SvgPicture.asset(
                          Assets.icons.catalog,
                          color: AppColors.yellow,
                        ),
                        onTap: () => onPressed(MainPageTab.catalog),
                      ),
                    ),
                    Expanded(
                      child: _ItemWidget(
                        selected: MainPageTab.shop == tab,
                        title: 'Кошик',
                        image: SvgPicture.asset(
                          Assets.icons.shop,
                          color: AppColors.black,
                        ),
                        selectedImage: SvgPicture.asset(
                          Assets.icons.shop,
                          color: AppColors.yellow,
                        ),
                        onTap: () => onPressed(MainPageTab.shop),
                      ),
                    ),
                    Expanded(
                      child: _ItemWidget(
                        selected: MainPageTab.favorites == tab,
                        title: 'Збережені',
                        image: SvgPicture.asset(
                          Assets.icons.favorite,
                          color: AppColors.black,
                        ),
                        selectedImage: SvgPicture.asset(
                          Assets.icons.favorite,
                          color: AppColors.yellow,
                        ),
                        onTap: () => onPressed(MainPageTab.favorites),
                      ),
                    ),
                    Expanded(
                      child: _ItemWidget(
                        selected: MainPageTab.menu == tab,
                        title: 'Меню',
                        image: SvgPicture.asset(
                          Assets.icons.menu,
                          color: AppColors.black,
                        ),
                        selectedImage: SvgPicture.asset(
                          Assets.icons.menu,
                          color: AppColors.yellow,
                        ),
                        onTap: () => onPressed(MainPageTab.menu),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _ItemWidget extends StatelessWidget {
  const _ItemWidget({
    required this.title,
    required this.image,
    required this.selectedImage,
    required this.onTap,
    this.selected = false,
  });

  final String title;
  final bool selected;
  final Widget image;
  final Widget selectedImage;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          selected ? selectedImage : image,
          const SizedBox(height: 2),
          Text(
            title,
            style: AppTextStyles.defaultStyle(height: 14.0 / 10.0),
          ),
        ],
      ),
    );
  }
}
