import 'package:flutter/material.dart';
import 'package:vandal/screens/menu/widgets/user_info_widget.dart';
import 'package:vandal/screens/shop/widgets/empty_shop.dart';
import 'package:vandal/utils/app_text_styles.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const UserInfoWidget(),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Кошик',
            style: AppTextStyles.headlines1(height: 36.0 / 24.0),
          ),
        ),
        const EmptyShop()
      ],
    );
  }
}
