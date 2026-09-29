import 'package:coffee_app/model/cart_item_model.dart';

class CartManager {
  // Singleton pattern to keep a single global cart instance
  static final CartManager _instance = CartManager. ();
  factory CartManager() => _instance;
  CartManager._internal();

  final List<cartItemModel> items = [];

  void addItem(cartItemModel newItem) {
    // Check if the exact same coffee and size already exist in the cart
    int index = items.indexWhere(
      (item) => item.name == newItem.name && item.size == newItem.size,
    );

    if (index >= 0) {
      // If it exists, just update the quantity
      items[index].quantity += newItem.quantity;
    } else {
      // Otherwise, add as a new entry
      items.add(newItem);
    }
  }

  double get totalAmount {
    return items.fold(0, (sum, item) => sum + (item.price * item.quantity));
  }
}
