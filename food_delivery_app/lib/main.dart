import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/home_screen.dart';
import 'package:food_delivery_app/screens/restaurant/restaurant_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const HomeScreen(),
      routes: {
        '/pizza': (context) =>
            const RestaurantDetailScreen(categoryTitle: 'Pizza'),
        '/burger': (context) =>
            const RestaurantDetailScreen(categoryTitle: 'Burger'),
        '/sushi': (context) =>
            const RestaurantDetailScreen(categoryTitle: 'Sushi'),
        '/dessert': (context) =>
            const RestaurantDetailScreen(categoryTitle: 'Dessert'),
        '/drink': (context) =>
            const RestaurantDetailScreen(categoryTitle: 'Drink'),
      },
    );
  }
}
