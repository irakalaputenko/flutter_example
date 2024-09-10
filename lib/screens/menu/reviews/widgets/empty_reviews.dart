import 'package:flutter/material.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class EmptyReviews extends StatelessWidget {
  const EmptyReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        Center(
          child: Text(
            'Відгуків ще немає',
            style: AppTextStyles.headlines3bold(height: 22.4 / 16.0),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            'Ви ще не залишали відгуки про товари',
            style: AppTextStyles.textSmallMed(height: 19.6 / 14.0),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0.0),
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.yellow),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ))),
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Center(
                child: Text(
                  "Залишити відгук",
                  style: AppTextStyles.textSmallMed(height: 19.6 / 14.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
