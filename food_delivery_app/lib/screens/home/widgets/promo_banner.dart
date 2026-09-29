import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/app_colors.dart';
import 'package:food_delivery_app/constants/app_text_styles.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({super.key});

  @override
  State<PromoBanner> createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(
          colors: [
            Color(0xffFF8A65),
            Color(0xffFF7043),
          ]
        )
      ),
      child: Stack(
        children: [
          Positioned(
            left: 24,
            top: 24,
            bottom: 24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "30% OFF",
                  style: AppTextStyle.heading.copyWith(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  "Enjoy your favorite meals\nwith a special discount.",
                  style: AppTextStyle.body.copyWith(
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 18),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColors.primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("Order Now"),
                ),
              ],
            ),
          ),

          Positioned(
            right: -10,
            bottom: 0,
            top: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              child: Image.network(
                "https://images.unsplash.com/photo-1513104890138-7c749659a591?w=700",
                width: 170,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
