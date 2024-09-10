import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/generated/locale_keys.g.dart';
import 'package:vandal/screens/menu/waiting_list/widgets/product_card.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class WaitingListScreen extends StatelessWidget {
  const WaitingListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
              LocaleKeys.waiting_list.tr(),
              style: AppTextStyles.headlines1(height: 36.0 / 24.0),
            ),
          ),
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
        ]),
      ),
    );
  }
}
