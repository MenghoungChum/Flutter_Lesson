import '../models/past_order_model.dart';

class PastOrderDummyData {
  static List<PastOrderModel> orders = [
    const PastOrderModel(
      restaurant: "Pizza Planet",
      image:
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500",
      date: "Oct 12, 2023",
      time: "7:30 PM",
      total: 24.50,
      status: "Delivered",
    ),
    const PastOrderModel(
      restaurant: "Sushi Zen",
      image:
          "https://images.unsplash.com/photo-1553621042-f6e147245754?w=500",
      date: "Oct 08, 2023",
      time: "1:15 PM",
      total: 42.00,
      status: "Delivered",
    ),
    const PastOrderModel(
      restaurant: "Green Garden",
      image:
          "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=500",
      date: "Oct 05, 2023",
      time: "6:45 PM",
      total: 18.25,
      status: "Cancelled",
    ),
  ];
}