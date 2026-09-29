class PastOrderModel {
  final String restaurant;
  final String image;
  final String date;
  final String time;
  final double total;
  final String status;

  const PastOrderModel({
    required this.restaurant,
    required this.image,
    required this.date,
    required this.time,
    required this.total,
    required this.status,
  });
}
