import 'package:coffee_app/model/coffee_model.dart';
import 'package:coffee_app/view/add_to_cart.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  CoffeeModel model;
  DetailPage({super.key, required this.model});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantity = 1;
  int selectedSize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: Text("Detail Page"),
        backgroundColor: Colors.brown.shade50,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.model.iamge),
              Text(
                widget.model.name,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.brown.shade900,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(widget.model.des, style: TextStyle(fontSize: 16)),
              SizedBox(height: 15),
              Text(
                "SIZE SELECT",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),

              SizedBox(height: 10),
              ...List.generate(widget.model.sizes.length, (index) {
                bool isSelected = selectedSize == index;
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedSize = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.brown.shade200
                          : Colors.transparent,
                      border: Border.all(
                        color: isSelected ? Colors.brown : Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      widget.model.sizes[index],
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                );
              }),
              SizedBox(height: 20),
              Text(
                "CUSTOMIZE YOUR CUP",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(40),
                ),
                color: const Color.fromARGB(255, 255, 203, 184),
                shadowColor: Colors.brown,
                child: ListTile(
                  leading: Icon(Icons.whatshot),
                  title: Text("Extra Expresso Shot"),
                  trailing: Icon(Icons.check_circle_outline),
                ),
              ),
              SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(40),
                ),
                color: const Color.fromARGB(255, 255, 203, 184),
                shadowColor: Colors.brown,
                child: ListTile(
                  leading: Icon(Icons.whatshot),
                  title: Text("Extra Expresso Shot"),
                  trailing: Icon(Icons.check_circle_outline),
                ),
              ),
              SizedBox(height: 10),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(40),
                ),
                color: const Color.fromARGB(255, 255, 203, 184),
                shadowColor: Colors.brown,
                child: ListTile(
                  leading: Icon(Icons.whatshot),
                  title: Text("Extra Expresso Shot"),
                  trailing: Icon(Icons.check_circle_outline),
                ),
              ),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 184, 164),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  if (quantity > 1) quantity--;
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                            SizedBox(width: 10),
                            Text(quantity.toString()),
                            SizedBox(width: 10),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  quantity++;
                                });
                              },
                              icon: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            AddToCart(
                              model: widget.model,
                              quantity: quantity,
                              selectSize: selectedSize,
                            );
                          });
                        },
                        label: Text("Add to cart"),
                        icon: Icon(Icons.shopping_cart),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
