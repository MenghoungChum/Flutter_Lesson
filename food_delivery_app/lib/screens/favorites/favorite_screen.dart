import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/favorite_restaurant_dummy_data.dart';
import 'package:food_delivery_app/models/favorite_restaurant_model.dart';
import 'package:food_delivery_app/screens/favorites/widgets/category_filter.dart';
import 'package:food_delivery_app/screens/favorites/widgets/favorite_card.dart';
import 'package:food_delivery_app/screens/favorites/widgets/favorite_search_bar.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  int selectedCategory = 0;
  String searchText = "";

  final List<String> categories = [
    "All",
    "Italian",
    "Sushi",
    "Burgers",
    "Salads",
  ];

  late List<FavoriteRestaurantModel> restaurants;

  @override
  void initState() {
    super.initState();
    restaurants = List.from(FavoriteDummyData.restaurants);
  }

  List<FavoriteRestaurantModel> get filteredRestaurants {
    List<FavoriteRestaurantModel> result = restaurants;

    // Category Filter
    if (selectedCategory != 0) {
      final selected = categories[selectedCategory].toLowerCase();

      result = result.where((restaurant) {
        return restaurant.category.toLowerCase().contains(selected);
      }).toList();
    }

    // Search Filter
    if (searchText.isNotEmpty) {
      result = result.where((restaurant) {
        return restaurant.name.toLowerCase().contains(searchText.toLowerCase());
      }).toList();
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xffC94D00)),
        ),
        title: const Text(
          "Favorites",
          style: TextStyle(
            color: Color(0xffC94D00),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: const NetworkImage(
                "https://i.pravatar.cc/150?img=12",
              ),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  FavoriteSearchBar(
                    onChanged: (value) {
                      setState(() {
                        searchText = value;
                      });
                    },
                  ),

                  const SizedBox(height: 18),

                  CategoryFilter(
                    categories: categories,
                    selectedIndex: selectedCategory,
                    onSelected: (index) {
                      setState(() {
                        selectedCategory = index;
                      });
                    },
                  ),
                ],
              ),
            ),

            Expanded(
              child: filteredRestaurants.isEmpty
                  ? const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            size: 90,
                            color: Colors.grey,
                          ),
                          SizedBox(height: 16),
                          Text(
                            "No favorites found",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Try another category or search.",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                  : AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: ListView.builder(
                        key: ValueKey(filteredRestaurants.length),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: filteredRestaurants.length,
                        itemBuilder: (context, index) {
                          final restaurant = filteredRestaurants[index];

                          return FavoriteCard(
                            restaurant: restaurant,

                            onTap: () {
                              // TODO:
                              // Navigate to Restaurant Detail Screen
                            },

                            onFavorite: () {
                              setState(() {
                                restaurants.remove(restaurant);
                              });

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "${restaurant.name} removed from favorites",
                                  ),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
