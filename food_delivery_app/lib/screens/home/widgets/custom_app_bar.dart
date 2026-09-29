import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/app_colors.dart';
import 'package:food_delivery_app/constants/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_on_outlined, size: 30, color: AppColors.primary),
        SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Deliver to", style: AppTextStyle.subtitle),
            Text("123 Main Street", style: AppTextStyle.heading),
          ],
        ),
        Expanded(
          child: Text(
            "QuickBit",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        CircleAvatar(
          radius: 24,
          backgroundImage: NetworkImage("https://i.pravatar.cc/150?img=3"),
        )
      ],
    );
  }
}
