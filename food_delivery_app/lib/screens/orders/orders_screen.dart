import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/past_order_dummy_data.dart';
import 'package:food_delivery_app/screens/orders/widgets/past_order_card.dart';

import '../../data/order_dummy_data.dart';
import 'widgets/order_card.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffF7F7F7),

        appBar: AppBar(
          elevation:0,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          title: const Text(
            "My Orders",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
          bottom: const TabBar(
            labelColor: Color(0xffC94D00),
            unselectedLabelColor: Colors.black54,
            indicatorColor: Color(0xffC94D00),
            tabs: [
              Tab(text: "Active Orders"),
              Tab(text: "Past Orders"),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: OrderDummyData.activeOrders.length,
              itemBuilder: (_, index) {
                return OrderCard(
                  order: OrderDummyData.activeOrders[index],
                );
              },
            ),

            ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: PastOrderDummyData.orders.length,
              itemBuilder: (context, index) {
                return PastOrderCard(
                  order: PastOrderDummyData.orders[index],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}