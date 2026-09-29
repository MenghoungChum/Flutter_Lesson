import 'package:flutter/material.dart';

class TotalCard extends StatelessWidget {
  final double subtotal;
  final double deliveryFee;
  final double tax;

  const TotalCard({
    super.key,
    required this.subtotal,
    required this.deliveryFee,
    required this.tax,
  });

  double get total => subtotal + deliveryFee + tax;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          _buildRow(
            "Subtotal",
            "\$${subtotal.toStringAsFixed(2)}",
          ),

          const SizedBox(height: 12),

          _buildRow(
            "Delivery Fee",
            "\$${deliveryFee.toStringAsFixed(2)}",
          ),

          const SizedBox(height: 12),

          _buildRow(
            "Tax & Fees",
            "\$${tax.toStringAsFixed(2)}",
          ),

          const Padding(
            padding: EdgeInsets.symmetric(vertical: 18),
            child: Divider(
              thickness: 1,
            ),
          ),

          _buildRow(
            "Total",
            "\$${total.toStringAsFixed(2)}",
            isTotal: true,
          ),
        ],
      ),
    );
  }

  Widget _buildRow(
    String title,
    String value, {
    bool isTotal = false,
  }) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: isTotal ? 18 : 15,
            fontWeight:
                isTotal ? FontWeight.bold : FontWeight.w500,
            color: isTotal
                ? Colors.black
                : Colors.grey.shade700,
          ),
        ),

        const Spacer(),

        Text(
          value,
          style: TextStyle(
            fontSize: isTotal ? 22 : 16,
            fontWeight: FontWeight.bold,
            color: isTotal
                ? const Color(0xffFF6B35)
                : Colors.black,
          ),
        ),
      ],
    );
  }
}