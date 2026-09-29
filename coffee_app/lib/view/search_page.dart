import 'package:coffee_app/model/coffee_data.dart';
import 'package:coffee_app/model/coffee_model.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<CoffeeModel> searchItem = coffeeData;
  List<CoffeeModel> searchResult = [];

  @override
  void initState() {
    super.initState();
    searchResult = searchItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search item .....",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          ),
          onChanged: (value) {
            setState(() {
              searchResult = searchItem
                  .where(
                    (e) => e.name.toLowerCase().contains(value.toLowerCase()),
                  )
                  .toList();
            });
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          itemCount: searchResult.length,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 130,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey)],
              ),
              child: Row(
                children: [
                  Image.network(
                    searchResult[index].iamge,
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const SizedBox(
                        width: 120,
                        height: 120,
                        child: Icon(Icons.image_not_supported, size: 40),
                      );
                    },
                  ),
                  SizedBox(width: 20),
                  SizedBox(
                    width: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                searchResult[index].name,
                                style: TextStyle(fontSize: 18),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Icon(Icons.favorite_outline, size: 35),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ ${searchResult[index].price}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                            Icon(Icons.add_circle, size: 35),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
