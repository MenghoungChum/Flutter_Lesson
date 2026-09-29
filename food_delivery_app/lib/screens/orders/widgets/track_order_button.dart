import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/track_order/track_order_screen.dart';

import '../../../models/order_model.dart';

class TrackOrderButton extends StatelessWidget {
  final OrderModel order;

  const TrackOrderButton({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => TrackOrderScreen(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color(0xffC94D00),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        icon: const Icon(
          Icons.navigation_outlined,
          color: Colors.white,
        ),
        label: const Text(
          "Track Order",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}