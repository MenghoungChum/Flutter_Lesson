import 'package:coffee_app/model/coffee_data.dart';
import 'package:coffee_app/model/coffee_model.dart';
import 'package:coffee_app/view/add_to_cart.dart';
import 'package:coffee_app/view/detail_page.dart';
import 'package:coffee_app/view/search_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = coffeeData.map((e) => e.category).toSet().toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade50,
        leading: Icon(Icons.coffee, color: Colors.brown),
        title: Text(
          "Coffee Shop",
          style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag, color: Colors.brown),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good Morning, Coffee\nLover",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30,
                height: 1.5,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Ready for your morning ritual",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 190, 138, 119),
                hintText: "Search your favourite coffe...",
                hintStyle: TextStyle(color: Colors.brown.shade100),
              ),
            ),

            SizedBox(height: 20),
            Expanded(
              child: DefaultTabController(
                length: categories.length,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: TabBar(
                        isScrollable: true,
                        tabAlignment: TabAlignment.start,
                        dividerHeight: 0,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: Colors.amber,
                        labelPadding: EdgeInsets.symmetric(horizontal: 30),
                        indicator: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelColor: Colors.white,
                        tabs: List.generate(categories.length, (index) {
                          return Tab(child: Text(categories[index]));
                        }),
                      ),
                    ),
                    SizedBox(height: 20),
                
                    Expanded(
                      child: TabBarView(
                        children: categories.map((category) {
                          List<CoffeeModel> categoryItem = coffeeData
                              .where((element) => element.category == category)
                              .toList();
                          return ListView.builder(
                            itemCount: categoryItem.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                          model: categoryItem[index],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 130,
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 2,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        Image.network(
                                          categoryItem[index].iamge,
                                          width: 120,
                                          height: 120,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                                return const SizedBox(
                                                  width: 120,
                                                  height: 120,
                                                  child: Icon(
                                                    Icons.image_not_supported,
                                                    size: 40,
                                                  ),
                                                );
                                              },
                                        ),
                                        SizedBox(width: 20),
                                        SizedBox(
                                          width: 180,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      categoryItem[index].name,
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                      ),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.favorite_outline,
                                                    size: 35,
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '\$ ${categoryItem[index].price}',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.add_circle,
                                                    size: 35,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
