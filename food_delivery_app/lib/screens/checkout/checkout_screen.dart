import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/checkout/widgets/delivery_address_card.dart';
import 'package:food_delivery_app/screens/checkout/widgets/order_summary_section.dart';
import 'package:food_delivery_app/screens/checkout/widgets/payment_section.dart';
import 'package:food_delivery_app/screens/checkout/widgets/place_order_button.dart';
import 'package:food_delivery_app/screens/checkout/widgets/total_card.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        surfaceTintColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xffC94D00),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Checkout",
          style: TextStyle(
            color: Color(0xffC94D00),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: const NetworkImage(
                "https://i.pravatar.cc/150?img=12",
              ),
              backgroundColor: Colors.grey.shade200,
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Part 2
              const Text(
                "Delivery Address",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Delivery Address Card
              DeliveryAddressCard(
                title: "Home",
                address:
                    "452 Metropolitan Avenue\nBrooklyn, NY 11211",
                note: "Ring bell 4B, please leave at the door.",
                onChange: () {
                  // Navigate to Address Screen
                },
              ),

              const SizedBox(height: 24),

              /// Part 3
              const Text(
                "Order Summary",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Order Summary
              OrderSummarySection(),

              const SizedBox(height: 24),

              /// Part 4
              const Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              // Payment Methods
              PaymentSection(),

              const SizedBox(height: 24),

              /// Part 5
              // Total Card
              const TotalCard(
                subtotal: 31.48,
                deliveryFee: 2.99,
                tax: 1.85,
              ),

              const SizedBox(height: 20),

              /// Part 6
              // Place Order Button
              PlaceOrderButton(),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}