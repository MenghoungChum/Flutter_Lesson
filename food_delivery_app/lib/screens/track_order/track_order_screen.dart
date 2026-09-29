import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/track_order/widgets/action_section.dart';
import 'package:food_delivery_app/screens/track_order/widgets/arrival_card.dart';
import 'package:food_delivery_app/screens/track_order/widgets/courier_card.dart';
import 'package:food_delivery_app/screens/track_order/widgets/restaurant_summary.dart';
import 'package:food_delivery_app/screens/track_order/widgets/tracking_timeline.dart';
import 'widgets/map_section.dart';

class TrackOrderScreen extends StatelessWidget {
  // final OrderModel order;

  const TrackOrderScreen({
    super.key,
    // required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Track Order",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          /// Map
          const MapSection(),

          /// Bottom Panel
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .58,
              decoration: const BoxDecoration(
                color: Color(0xffF7F7F7),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const SizedBox(height: 8),

                    /// Part 2
                    /// Arrival Card (You can now pass `order` here if needed)
                    ArrivalCard(estimatedTime: "12:45 PM", ),
                    const SizedBox(height: 18),

                    /// Part 3
                    /// Courier Card
                    CourierCard(
                      image:
                          "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=400",
                      name: "Marcus Thompson",
                      rating: 4.9,
                      onCall: () {
                        // TODO: Call courier
                      },
                    ),
                    const SizedBox(height: 18),

                    /// Part 4
                    /// Timeline
                    TrackingTimeline(),
                    const SizedBox(height: 18),

                    /// Part 5
                    /// Restaurant Summary
                    RestaurantSummary(
                      image:
                          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=800",
                      restaurantName: "The Burger Joint",
                      totalItems: 2,
                      totalPrice: 24.50,
                      onDetails: () {
                        // Navigate to Order Detail Screen
                      },
                    ),




const ActionSection(),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}