import 'package:flutter/material.dart';

import '../../../models/cart_item_model.dart';
import 'order_item_card.dart';

class OrderSummarySection extends StatelessWidget {
  const OrderSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      const CartItemModel(
        name: "Classic Burger",
        description: "Well done, no onions",
        image:
            "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=800",
        quantity: 2,
        price: 25.98,
      ),
      const CartItemModel(
        name: "Hand-Cut Fries",
        description: "Large, sea salt",
        image:
            "https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=800",
        quantity: 1,
        price: 5.50,
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: items
            .map((item) => OrderItemCard(item: item))
            .toList(),
      ),
    );
  }
}