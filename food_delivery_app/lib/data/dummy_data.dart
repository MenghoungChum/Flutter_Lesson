import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/category_model.dart';
import 'package:food_delivery_app/models/restaurant_model.dart';

class DummyData {
  static List<CategoryModel> categories = [
    CategoryModel(id: 1, title: "Pizza", icon: Icons.local_pizza_outlined, route: "/pizza"),
    CategoryModel(id: 2, title: "Burger", icon: Icons.lunch_dining_outlined, route: "/burger"),
    CategoryModel(id: 3, title: "Sushi", icon: Icons.ramen_dining_outlined, route: "/sushi"),
    CategoryModel(id: 4, title: "Dessert", icon: Icons.icecream_outlined, route: "/dessert"),
    CategoryModel(id: 5, title: "Drink", icon: Icons.local_bar_outlined, route: "/drink"),
  ];

  static List<RestaurantModel> restaurants = [
    RestaurantModel(
      image: "https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=1000",
      name: "The Green Bowl",
      category: "Healthy • Salad • Vegan",
      delivery: "Free Delivery",
      time: "20-30 min",
      rating: 4.8,
    ),

    RestaurantModel(
      image:
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=1000",
      name: "Burger Theory",
      category: "Burger • American • Fast Food",
      delivery: "\$5 Delivery",
      time: "15-25 min",
      rating: 4.5,
    ),

    RestaurantModel(
      image:
          "https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=1000",
      name: "Zen Sushi Bar",
      category: "Japanese • Sushi • Asian",
      delivery: "\$2.99 Delivery",
      time: "30-45 min",
      rating: 4.9,
    ),

    RestaurantModel(
      image:
          "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=1000",
      name: "Italian House",
      category: "Italian • Pasta • Pizza",
      delivery: "Free Delivery",
      time: "25-35 min",
      rating: 4.7,
    ),

    RestaurantModel(
      image: "https://images.unsplash.com/photo-1559339352-11d035aa65de?w=1000",
      name: "Coffee Corner",
      category: "Coffee • Bakery",
      delivery: "\$1.99 Delivery",
      time: "10-15 min",
      rating: 4.6,
    ),
  ];
}
