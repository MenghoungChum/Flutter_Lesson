import 'package:flutter/material.dart';
import '../../../../constants/app_colors.dart';

class BottomNavbar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  final List<IconData> icons = const [
    Icons.home_rounded,
    Icons.search_rounded,
    Icons.receipt_long_rounded,
    Icons.favorite_rounded,
    Icons.person_rounded,
  ];

  final List<String> labels = const [
    "Home",
    "Search",
    "Orders",
    "Favorite",
    "Profile",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.08),
              blurRadius: 20,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            icons.length,
            (index) => GestureDetector(
              onTap: () {
                // ហៅមុខងារ onTap ដែលបញ្ជូនมาจาก HomeScreen
                widget.onTap(index);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: widget.currentIndex == index
                      ? AppColors.primary.withOpacity(.15)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Icon(
                      icons[index],
                      color: widget.currentIndex == index
                          ? AppColors.primary
                          : Colors.grey,
                    ),
                    if (widget.currentIndex == index) ...[
                      const SizedBox(width: 8),
                      Text(
                        labels[index],
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}