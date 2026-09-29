import 'package:coffee_app/model/coffee_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AddToCart extends StatefulWidget {
  CoffeeModel model;
  int quantity;
  int selectSize;
  AddToCart({super.key,required this.model,required this.quantity,required this.selectSize});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Add to cart page")));
  }
}
