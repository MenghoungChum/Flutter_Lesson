import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/widgets/category_item.dart';

import '../../../../constants/app_text_styles.dart';
import '../../../../models/category_model.dart';

// ១. ប្តូរពី StatelessWidget មកជា StatefulWidget
class CategoriesSection extends StatefulWidget {
  final List<CategoryModel> categories;

  const CategoriesSection({super.key, required this.categories});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

// ២. បន្ថែម State Class សម្រាប់គ្រប់គ្រងទិន្នន័យប្តូរចុច
class _CategoriesSectionState extends State<CategoriesSection> {
  int currectSelectedIndex = 0; // ទុកប្រអប់សម្រាប់ចាំចំណាំ index ដែលត្រូវចុច

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Header
        Row(
          children: [
            Text("Categories", style: AppTextStyle.title),
            const Spacer(),
            TextButton(onPressed: () {}, child: const Text("See All")),
          ],
        ),

        const SizedBox(height: 15),

        // Category List
        SizedBox(
          height: 105,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            // ត្រូវប្រើ widget.categories ព្រោះវាស្ថិតក្នុង State class
            itemCount: widget.categories.length,
            separatorBuilder: (_, __) => const SizedBox(width: 18),
            itemBuilder: (context, index) {
              return CategoryItem(
                category: widget.categories[index],
                onTap: () {
                  Navigator.pushNamed(context, widget.categories[index].route);
                  setState(() {
                    currectSelectedIndex = index;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
