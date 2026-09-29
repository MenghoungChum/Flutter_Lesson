import 'package:flutter/material.dart';

import 'action_button.dart';

class ActionSection extends StatelessWidget {
  const ActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Quick Actions",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 18),

        Row(
          children: [
            ActionButton(
              icon: Icons.chat_bubble_outline,
              title: "Chat",
              color: const Color(0xff4CAF50),
              onTap: () {
                // TODO:
                // Open Chat Screen
              },
            ),

            const SizedBox(width: 14),

            ActionButton(
              icon: Icons.call,
              title: "Call",
              color: const Color(0xff2196F3),
              onTap: () {
                // TODO:
                // Call Restaurant
              },
            ),

            const SizedBox(width: 14),

            ActionButton(
              icon: Icons.close,
              title: "Cancel",
              color: Colors.red,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    title: const Text("Cancel Order"),
                    content: const Text(
                      "Are you sure you want to cancel this order?",
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("No"),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          Navigator.pop(context);

                          // TODO:
                          // Cancel Order
                        },
                        child: const Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}