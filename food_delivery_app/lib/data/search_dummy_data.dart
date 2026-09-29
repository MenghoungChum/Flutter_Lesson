import '../models/recent_search_model.dart';
import '../models/search_category_model.dart';

class SearchDummyData {
  static List<RecentSearchModel> recentSearches = const [
    RecentSearchModel(title: "Sushi"),
    RecentSearchModel(title: "Healthy"),
    RecentSearchModel(title: "Tacos"),
  ];

  static List<SearchCategoryModel> categories = const [
    SearchCategoryModel(
      title: "Pizza",
      image:
          "https://images.unsplash.com/photo-1513104890138-7c749659a591?w=800",
    ),
    SearchCategoryModel(
      title: "Burger",
      image:
          "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=800",
    ),
    SearchCategoryModel(
      title: "Vegan",
      image:
          "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?w=800",
    ),
    SearchCategoryModel(
      title: "Desserts",
      image:
          "https://images.unsplash.com/photo-1563729784474-d77dbb933a9e?w=800",
    ),
    SearchCategoryModel(
      title: "Chinese",
      image:
          "https://i.pinimg.com/736x/46/13/45/461345fdc15a4820538db60e306202b8.jpg",
    ),
    SearchCategoryModel(
      title: "Indian",
      image:
          "https://images.unsplash.com/photo-1585937421612-70a008356fbe?w=800",
    ),
  ];
}