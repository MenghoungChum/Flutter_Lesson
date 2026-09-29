import 'package:flutter/material.dart';

import '../../../models/order_model.dart';

class OrderProgress extends StatelessWidget {
  final OrderModel order;

  const OrderProgress({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: LinearProgressIndicator(
              value: order.progress,
              minHeight: 7,
              backgroundColor: Colors.grey.shade300,
              valueColor: const AlwaysStoppedAnimation(
                Color(0xffC94D00),
              ),
            ),
          ),
        ),

        const SizedBox(width: 14),

        Text(
          order.status,
          style: const TextStyle(
            color: Color(0xffC94D00),
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}