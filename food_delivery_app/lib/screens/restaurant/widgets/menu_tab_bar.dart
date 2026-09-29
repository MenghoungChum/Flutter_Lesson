import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class MenuTabBar extends StatelessWidget {
  const MenuTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Column(
        children: [
          Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TabBar(
              indicator: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(30),
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black87,
              dividerColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(text: "Featured"),
                Tab(text: "Burger"),
                Tab(text: "Drink"),
                Tab(text: "Dessert"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}