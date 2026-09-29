class CoffeeModel {
  int code;
  String name;
  String category;
  String type;
  String iamge;
  String des;
  String instruction;
  double price;
  bool favourite;
  List<String> sizes;

  CoffeeModel({
    required this.code,
    required this.name,
    required this.category,
    required this.type,
    required this.iamge,
    required this.des,
    required this.instruction,
    required this.price,
    required this.favourite,
    required this.sizes,
  });
}

