class RestaurantModel {
  final String image;
  final String name;
  final String category;
  final String delivery;
  final String time;
  final double rating;
  final bool isFavorite;


  RestaurantModel({
    required this.image,
    required this.name,
    required this.category,
    required this.delivery,
    required this.time,
    required this.rating,
    this.isFavorite=false, // Default value for isFavorite
  });
}
