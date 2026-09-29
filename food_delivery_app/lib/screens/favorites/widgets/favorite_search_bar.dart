import 'package:flutter/material.dart';

class FavoriteSearchBar extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const FavoriteSearchBar({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: const InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search),
          hintText: "Search your favorites...",
        ),
      ),
    );
  }
}