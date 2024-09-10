import 'package:flutter/material.dart';
import 'package:vandal/utils/app_text_styles.dart';

class EmptyWaitingList extends StatelessWidget {
  const EmptyWaitingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        Center(
          child: Text(
            'Ви ще нічого не додавали',
            style: AppTextStyles.headlines3(height: 22.4 / 16.0),
          ),
        ),
      ],
    );
  }
}
