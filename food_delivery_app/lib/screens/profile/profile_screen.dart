import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/profile/widgets/favorite_restaurant_section.dart';
import 'package:food_delivery_app/screens/profile/widgets/logout_button.dart';
import 'package:food_delivery_app/screens/profile/widgets/menu_section.dart';
import 'package:food_delivery_app/screens/profile/widgets/quick_action_section.dart';
import 'package:food_delivery_app/screens/profile/widgets/rewards_card.dart';

import 'widgets/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 15),

              ProfileHeader(),

              SizedBox(height: 25),

              // Part 2
              // Quick Actions
              QuickActionSection(),

              SizedBox(height: 15),

              // Part 3
              // Reward Card
              RewardsCard(),
              SizedBox(height: 15),

              // Part 4
              // Menu Tiles
              MenuSection(),

              SizedBox(height: 15),

              // Part 5
              // Favorite Restaurants
              FavoriteRestaurantSection(),

              SizedBox(height: 15),

              // Part 6
              // Logout Button
              LogoutButton()
            ],
          ),
        ),
      ),
    );
  }
}