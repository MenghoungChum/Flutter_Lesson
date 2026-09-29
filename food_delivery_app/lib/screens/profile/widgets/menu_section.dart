import 'package:flutter/material.dart';

import 'menu_tile.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Account",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          MenuTile(
            icon: Icons.person_outline,
            title: "Personal Information",
            subtitle: "Manage your personal details",
            onTap: () {
              // Navigator.push(...)
            },
          ),

          const SizedBox(height: 12),

          MenuTile(
            icon: Icons.credit_card_outlined,
            title: "Payment Methods",
            subtitle: "Cards & payment options",
            onTap: () {},
          ),

          const SizedBox(height: 12),

          MenuTile(
            icon: Icons.location_on_outlined,
            title: "Delivery Addresses",
            subtitle: "Home, Office and more",
            onTap: () {},
          ),

          const SizedBox(height: 12),

          MenuTile(
            icon: Icons.notifications_none,
            title: "Notifications",
            subtitle: "Offers and order updates",
            showNotification: true,
            onTap: () {},
          ),

          const SizedBox(height: 12),

          MenuTile(
            icon: Icons.help_outline,
            title: "Help & Support",
            subtitle: "FAQ and contact us",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}