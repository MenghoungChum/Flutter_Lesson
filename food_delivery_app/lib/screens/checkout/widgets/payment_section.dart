import 'package:flutter/material.dart';

import '../../../models/payment_method_model.dart';
import 'payment_method_card.dart';

class PaymentSection extends StatefulWidget {
  const PaymentSection({super.key});

  @override
  State<PaymentSection> createState() => _PaymentSectionState();
}

class _PaymentSectionState extends State<PaymentSection> {
  int selectedIndex = 0;

  final methods = const [
    PaymentMethodModel(
      title: "Apple Pay",
      icon: Icons.phone_iphone,
    ),
    PaymentMethodModel(
      title: "**** 8821",
      icon: Icons.credit_card,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        methods.length,
        (index) => PaymentMethodCard(
          method: methods[index],
          selected: selectedIndex == index,
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}