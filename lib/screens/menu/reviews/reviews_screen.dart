import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/screens/menu/reviews/widgets/empty_reviews.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Відгуки',
                  style: AppTextStyles.headlines1(height: 36.0 / 24.0),
                ),
                GestureDetector(
                  onTap: () => context.go('/questions'),
                  child: Text(
                    'Питання',
                    style: AppTextStyles.headlines3bold(
                        height: 22.4 / 16.0, color: AppColors.yellow),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const EmptyReviews()
        ]),
      ),
    );
  }
}
