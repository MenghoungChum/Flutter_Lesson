class MenuItemModel {
  final String name;
  final String description;
  final String image;
  final double price;
  final bool featured;

  MenuItemModel({
    required this.name,
    required this.description,
    required this.image,
    required this.price,
    this.featured = false,
  });
}

