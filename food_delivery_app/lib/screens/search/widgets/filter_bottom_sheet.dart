import 'package:flutter/material.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  int sortIndex = 0;
  int priceIndex = 1;

  final dietary = ["Vegan", "Gluten Free", "Halal"];
  final selectedDietary = <String>{};

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 25),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 45,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                const Text(
                  "Filters",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const Spacer(),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      color: Color(0xffFF6B35),
                    ),
                  ),
                )
              ],
            ),

            const SizedBox(height: 20),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Sort By",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: filterButton(
                    "Popularity",
                    sortIndex == 0,
                    () {
                      setState(() => sortIndex = 0);
                    },
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: filterButton(
                    "Rating",
                    sortIndex == 1,
                    () {
                      setState(() => sortIndex = 1);
                    },
                  ),
                ),

                const Spacer(),
              ],
            ),

            const SizedBox(height: 30),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Price Range",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [
                Expanded(
                  child: priceButton(
                    "\$",
                    0,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: priceButton(
                    "\$\$",
                    1,
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: priceButton(
                    "\$\$\$",
                    2,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Dietary",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 15),

            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: dietary.map((e) {
                final selected = selectedDietary.contains(e);

                return ChoiceChip(
                  label: Text(e),
                  selected: selected,
                  onSelected: (_) {
                    setState(() {
                      if (selected) {
                        selectedDietary.remove(e);
                      } else {
                        selectedDietary.add(e);
                      }
                    });
                  },
                  selectedColor: const Color(0xffFF6B35),
                  labelStyle: TextStyle(
                    color: selected ? Colors.white : Colors.black,
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 35),

            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffC94D00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Show Results",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget filterButton(
    String text,
    bool selected,
    VoidCallback onTap,
  ) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor:
            selected ? const Color(0xffFF6B35) : Colors.white,
        side: const BorderSide(
          color: Color(0xffFF6B35),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  Widget priceButton(
    String text,
    int index,
  ) {
    final selected = priceIndex == index;

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor:
            selected ? const Color(0xffFF6B35) : Colors.white,
        side: const BorderSide(
          color: Color(0xffFF6B35),
        ),
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      onPressed: () {
        setState(() => priceIndex = index);
      },
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}