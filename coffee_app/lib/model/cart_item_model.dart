import 'package:coffee_app/model/coffee_model.dart';

class cartItemModel {
  CoffeeModel model;
  int selectedSize;
  int quantity;

  cartItemModel({
    required this.model,
    required this.selectedSize,
    required this.quantity,
  });
}
