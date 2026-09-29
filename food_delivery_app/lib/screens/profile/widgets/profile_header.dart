import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        /// Top Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [

              const Icon(
                Icons.location_on_outlined,
                color: Color(0xffFF6B35),
                size: 18,
              ),

              const SizedBox(width: 5),

              const Text(
                "Profile",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xff7A3C1D),
                ),
              ),

              const Spacer(),

              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                  "https://i.pravatar.cc/150?img=12",
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 30),

        /// Avatar
        Stack(
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 4,
                ),
              ),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.pravatar.cc/300?img=12",
                ),
              ),
            ),

            Positioned(
              right: 3,
              bottom: 3,
              child: Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 14),

        const Text(
          "Alex Johnson",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),

        const SizedBox(height: 8),

        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 6,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffFFE4D5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: const Text(
            "Member since 2022",
            style: TextStyle(
              color: Color(0xffFF6B35),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}