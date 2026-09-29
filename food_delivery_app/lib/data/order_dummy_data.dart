import '../models/order_model.dart';

class OrderDummyData {
  static List<OrderModel> activeOrders = [
    const OrderModel(
      restaurant: "The Burger Joint",
      orderId: "#QB-88219",
      image:
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500",
      status: "Out for delivery",
      progress: 0.75,
      eta: "Arriving in 15 mins",
    ),
  ];

  static List<OrderModel> pastOrders = [
    const OrderModel(
      restaurant: "Pizza Palace",
      orderId: "#QB-77811",
      image:
          "https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500",
      status: "Delivered",
      progress: 1,
      eta: "Delivered",
    ),
  ];
}