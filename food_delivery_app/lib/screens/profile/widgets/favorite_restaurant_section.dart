import 'package:flutter/material.dart';

import '../../../data/favorite_restaurant_dummy_data.dart';
import 'favorite_restaurant_card.dart';

class FavoriteRestaurantSection extends StatelessWidget {
  const FavoriteRestaurantSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Text(
                "Favorite Restaurants",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Spacer(),

              TextButton(
                onPressed: () {},
                child: const Text(
                  "View All",
                  style: TextStyle(
                    color: Color(0xffFF6B35),
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        SizedBox(
          height: 190,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: FavoriteDummyData.restaurants.length,
            itemBuilder: (context, index) {
              return FavoriteRestaurantCard(
                restaurant:
                    FavoriteDummyData.restaurants[index],
              );
            },
          ),
        ),
      ],
    );
  }
}