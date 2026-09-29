import 'package:flutter/material.dart';

import 'quick_action_card.dart';

class QuickActionSection extends StatelessWidget {
  const QuickActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Quick Actions",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          Row(
            children: [
              QuickActionCard(
                icon: Icons.receipt_long,
                title: "Orders",
                subtitle: "View your orders",
                onTap: () {
                  // Navigate to Orders Screen
                },
              ),

              const SizedBox(width: 16),

              QuickActionCard(
                icon: Icons.favorite,
                title: "Favorites",
                subtitle: "Saved restaurants",
                onTap: () {
                  // Navigate to Favorite Screen
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}