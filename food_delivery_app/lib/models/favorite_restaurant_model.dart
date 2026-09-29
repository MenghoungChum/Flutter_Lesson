class FavoriteRestaurantModel {
  final String name;
  final String category;
  final String image;
  final double rating;
  final String deliveryTime;
  final bool isFavorite;

  const FavoriteRestaurantModel({
    required this.name,
    required this.category,
    required this.image,
    required this.rating,
    required this.deliveryTime,
    this.isFavorite = true,
  });
}