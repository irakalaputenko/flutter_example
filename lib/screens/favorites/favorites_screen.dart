import 'package:flutter/material.dart';
import 'package:vandal/screens/menu/waiting_list/widgets/product_card.dart';
import 'package:vandal/screens/menu/widgets/user_info_widget.dart';
import 'package:vandal/utils/app_text_styles.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ListView(children: [
      const UserInfoWidget(),
      const SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Список бажань',
          style: AppTextStyles.headlines1(height: 36.0 / 24.0),
        ),
      ),
      // const SizedBox(
      //   height: 150,
      // ),
      // Center(
      //   child: Text(
      //     'Ви ще нічого не зберігли',
      //     style: AppTextStyles.headlines3(height: 22.4 / 16.0),
      //   ),
      // ),
      const SizedBox(height: 10),
      // const EmptyWaitingList()
      GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: width * 0.68,
          crossAxisCount: 2,
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
        ),
        padding: const EdgeInsets.all(20.0),
        itemCount: 4, //TODO: total number of items
        itemBuilder: (context, index) {
          return const ProductCard();
        },
      )
    ]);
  }
}
