import '../models/menu_item_model.dart';

class MenuDummyData {
  static List<MenuItemModel> burgers = [
    MenuItemModel(
      name: "Classic Cheeseburger",
      description: "Juicy beef patty with cheddar cheese",
      image: "https://picsum.photos/seed/burger1/800/600",
      price: 8.99,
      featured: true,
    ),
    MenuItemModel(
      name: "Double Beef Burger",
      description: "Two beef patties with melted cheese",
      image: "https://picsum.photos/seed/burger2/800/600",
      price: 10.99,
    ),
    MenuItemModel(
      name: "Chicken Burger",
      description: "Crispy chicken breast with lettuce",
      image: "https://picsum.photos/seed/burger3/800/600",
      price: 7.99,
    ),
    MenuItemModel(
      name: "BBQ Burger",
      description: "Beef burger with BBQ sauce",
      image: "https://picsum.photos/seed/burger4/800/600",
      price: 9.49,
    ),
  ];

  static List<MenuItemModel> pizza = [
    MenuItemModel(
      name: "Margherita Pizza",
      description: "Tomato sauce, mozzarella, and basil",
      image: "https://picsum.photos/seed/pizza1/800/600",
      price: 11.99,
      featured: true,
    ),
    MenuItemModel(
      name: "Pepperoni Pizza",
      description: "Spicy pepperoni with melted cheese",
      image: "https://picsum.photos/seed/pizza2/800/600",
      price: 12.99,
    ),
    MenuItemModel(
      name: "Veggie Pizza",
      description: "Bell peppers, onions, mushrooms, and olives",
      image: "https://picsum.photos/seed/pizza3/800/600",
      price: 10.49,
    ),
    MenuItemModel(
      name: "Hawaiian Pizza",
      description: "Ham, pineapple, and mozzarella",
      image: "https://picsum.photos/seed/pizza4/800/600",
      price: 13.49,
    ),
  ];

  static List<MenuItemModel> sushi = [
    MenuItemModel(
      name: "Salmon Roll",
      description: "Fresh salmon with avocado and rice",
      image: "https://picsum.photos/seed/sushi1/800/600",
      price: 9.99,
      featured: true,
    ),
    MenuItemModel(
      name: "Tuna Nigiri",
      description: "Tuna slices over seasoned rice",
      image: "https://picsum.photos/seed/sushi2/800/600",
      price: 8.99,
    ),
    MenuItemModel(
      name: "Dragon Roll",
      description: "Eel, avocado, and cucumber roll",
      image: "https://picsum.photos/seed/sushi3/800/600",
      price: 12.49,
    ),
    MenuItemModel(
      name: "Tempura Sushi",
      description: "Crispy tempura shrimp roll",
      image: "https://picsum.photos/seed/sushi4/800/600",
      price: 11.99,
    ),
  ];

  static List<MenuItemModel> dessert = [
    MenuItemModel(
      name: "Chocolate Cake",
      description: "Rich chocolate cake with ganache",
      image: "https://picsum.photos/seed/dessert1/800/600",
      price: 6.99,
      featured: true,
    ),
    MenuItemModel(
      name: "Strawberry Cheesecake",
      description: "Creamy cheesecake with fresh strawberries",
      image: "https://picsum.photos/seed/dessert2/800/600",
      price: 7.49,
    ),
    MenuItemModel(
      name: "Ice Cream Sundae",
      description: "Vanilla ice cream with toppings",
      image: "https://picsum.photos/seed/dessert3/800/600",
      price: 5.99,
    ),
    MenuItemModel(
      name: "Macaron Box",
      description: "Colorful macarons with assorted flavors",
      image: "https://picsum.photos/seed/dessert4/800/600",
      price: 8.49,
    ),
  ];

  static List<MenuItemModel> drink = [
    MenuItemModel(
      name: "Fresh Lemonade",
      description: "Cold lemonade with mint",
      image: "https://picsum.photos/seed/drink1/800/600",
      price: 3.99,
      featured: true,
    ),
    MenuItemModel(
      name: "Iced Coffee",
      description: "Chilled coffee with ice and milk",
      image: "https://picsum.photos/seed/drink2/800/600",
      price: 4.49,
    ),
    MenuItemModel(
      name: "Green Tea",
      description: "Hot green tea with jasmine notes",
      image: "https://picsum.photos/seed/drink3/800/600",
      price: 2.99,
    ),
    MenuItemModel(
      name: "Mango Smoothie",
      description: "Creamy mango smoothie with yogurt",
      image: "https://picsum.photos/seed/drink4/800/600",
      price: 5.49,
    ),
  ];

  static List<MenuItemModel> menuForCategory(String category) {
    final lower = category.toLowerCase();

    if (lower.contains('burger')) {
      return burgers;
    }
    if (lower.contains('pizza')) {
      return pizza;
    }
    if (lower.contains('sushi')) {
      return sushi;
    }
    if (lower.contains('dessert')) {
      return dessert;
    }
    if (lower.contains('drink')) {
      return drink;
    }

    return burgers;
  }
}
