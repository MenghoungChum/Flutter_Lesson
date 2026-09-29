class OrderModel {
  final String restaurant;
  final String orderId;
  final String image;
  final String status;
  final double progress;
  final String eta;

  const OrderModel({
    required this.restaurant,
    required this.orderId,
    required this.image,
    required this.status,
    required this.progress,
    required this.eta,
  });
}