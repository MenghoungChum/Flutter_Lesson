import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/search/widgets/category_grid.dart';
import 'package:food_delivery_app/screens/search/widgets/suggestion_card.dart';

import '../../data/search_dummy_data.dart';
import 'widgets/recent_search_section.dart';
import 'widgets/search_app_bar.dart';

class SearchScreen extends StatelessWidget {
  final VoidCallback onBack;

  const SearchScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAppBar(onBack: onBack),

              const SizedBox(height: 30),

              RecentSearchSection(
                searches: SearchDummyData.recentSearches,
              ),
              const SizedBox(height: 30),

              // Category Grid (Part 3)
              const SizedBox(height: 30),
              CategoryGrid(),

              // Suggested Restaurants (Part 4)
              const SizedBox(height: 30),
             
              SuggestionCard()
            ],
          ),
        ),
      ),
    );
  }
}
