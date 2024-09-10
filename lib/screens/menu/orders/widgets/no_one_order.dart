import 'package:flutter/material.dart';
import 'package:vandal/utils/app_colors.dart';
import 'package:vandal/utils/app_text_styles.dart';

class NoOneOrder extends StatelessWidget {
  const NoOneOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        Center(
          child: Text(
            'Ви ще нічого не замовили',
            style: AppTextStyles.headlines3(height: 22.4 / 16.0),
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
                  "Зробити перше замовлення",
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
