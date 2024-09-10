import 'package:flutter/material.dart';
import 'package:vandal/screens/menu/orders/widgets/order_widget.dart';

class ListOrders extends StatelessWidget {
  const ListOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return const OrderWidget();
        });
  }
}
