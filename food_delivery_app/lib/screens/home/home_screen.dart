import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/favorites/favorite_screen.dart';
import 'package:food_delivery_app/screens/home/widgets/bottom_navbar.dart';
import 'package:food_delivery_app/screens/home/widgets/categories_section.dart';
import 'package:food_delivery_app/screens/home/widgets/custom_app_bar.dart';
import 'package:food_delivery_app/screens/home/widgets/promo_banner.dart';
import 'package:food_delivery_app/screens/home/widgets/restaurant_card.dart';
import 'package:food_delivery_app/screens/home/widgets/search_box.dart';
import 'package:food_delivery_app/screens/orders/orders_screen.dart';
import 'package:food_delivery_app/screens/profile/profile_screen.dart';
import 'package:food_delivery_app/screens/search/search_screen.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_text_styles.dart';
import '../../data/dummy_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // កន្លែងចាំ Index នៃការចុច

  // 📂 បញ្ជីទំព័រទាំង 5 សម្រាប់បង្ហាញតាមរយៈ Bottom Navbar
  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomeBodyContent(),
      SearchScreen(
        onBack: () {
          setState(() {
            _currentIndex = 0;
          });
        },
      ),
      OrdersScreen(),
      FavoriteScreen(),
      ProfileScreen(),
    ];
    return Scaffold(
      backgroundColor: AppColors.background,

      // 🖥️ វានឹងបង្ហាញទំព័រដូរទៅតាម index ដែល User បានចុចលើ Navbar
      body: screens[_currentIndex],

      // 👇 ហៅ BottomNavbar មកប្រើ និងបញ្ជូន currentIndex ព្រមទាំងមុខងារ onTap ទៅជាមួយ
      bottomNavigationBar: BottomNavbar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex =index; // ធ្វើបច្ចុប្បន្នភាព index ពេលចុចដើម្បីប្ដូរ Tab
          });
        },
      ),
    );
  }
}

/// ==========================================
/// 🏠 មាតិកាដើមរបស់ HomeScreen (Home Tab Content)
/// ==========================================
class HomeBodyContent extends StatelessWidget {
  const HomeBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: 10),

          /// App Bar
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomAppBar(),
          ),

          const SizedBox(height: 20),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SearchBox(),
          ),

          const SizedBox(height: 20),

          // Body
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: PromoBanner(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: CategoriesSection(categories: DummyData.categories),
                  ),

                  const SizedBox(height: 25),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text("Popular Near You", style: AppTextStyle.title),

                        const Spacer(),

                        const Icon(
                          Icons.tune,
                          size: 18,
                          color: AppColors.primary,
                        ),

                        const SizedBox(width: 5),

                        Text("Filter", style: AppTextStyle.subtitle),
                      ],
                    ),
                  ),

                  const SizedBox(height: 15),

                  ListView.builder(
                    itemCount: DummyData.restaurants.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 18),
                        child: RestaurantCard(
                          restaurant: DummyData.restaurants[index],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
