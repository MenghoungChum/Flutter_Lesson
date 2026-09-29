import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../data/menu_dummy_data.dart';

import 'widgets/add_to_cart_button.dart';
import 'widgets/menu_item_card.dart';
import 'widgets/restaurant_header.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final String? categoryTitle;

  const RestaurantDetailScreen({super.key, this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final title = categoryTitle ?? 'Menu';
    final menuItems = MenuDummyData.menuForCategory(title);

    return Scaffold(
      backgroundColor: AppColors.background,
      bottomNavigationBar: const AddToCartButton(),
      body: CustomScrollView(
        slivers: [
          RestaurantHeader(title: title, imageUrl: _categoryImage(title)),
          SliverToBoxAdapter(
            child: Column(
              children: [
                ListView.builder(
                  itemCount: menuItems.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MenuItemCard(item: menuItems[index]);
                  },
                ),

                const SizedBox(height: 120),
              ],
            ),
          ),
        ],
      ),
    );
  }
  String _categoryImage(String categoryTitle) {
    final lower = categoryTitle.toLowerCase();
    if (lower.contains('pizza')) {
      return 'https://images.unsplash.com/photo-1548365328-051ed22494c4?w=1200';
    }
    if (lower.contains('burger')) {
      return 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=1200';
    }
    if (lower.contains('sushi')) {
      return 'https://images.unsplash.com/photo-1553621042-f6e147245754?w=1200';
    }
    if (lower.contains('dessert')) {
      return 'https://images.unsplash.com/photo-1544025162-d76694265947?w=1200';
    }
    if (lower.contains('drink')) {
      return 'https://images.unsplash.com/photo-1510626176961-4b57d4fbad1a?w=1200';
    }
    return 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=1200';
  }
}
