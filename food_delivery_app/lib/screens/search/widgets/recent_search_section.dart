import 'package:flutter/material.dart';

import '../../../models/recent_search_model.dart';

class RecentSearchSection extends StatelessWidget {
  final List<RecentSearchModel> searches;

  const RecentSearchSection({
    super.key,
    required this.searches,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Title
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recent Searches",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            TextButton(
              onPressed: () {
                // TODO: Clear recent searches
              },
              child: const Text(
                "Clear all",
                style: TextStyle(
                  color: Color(0xffFF6B35),
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 15),

        /// Search Chips
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: searches.map((search) {
            return InkWell(
              
              borderRadius: BorderRadius.circular(30),
              onTap: () {
                // TODO: Search again
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xffEFEFEF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.history,
                      size: 18,
                      color: Colors.grey.shade700,
                    ),

                    const SizedBox(width: 6),

                    Text(
                      search.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}