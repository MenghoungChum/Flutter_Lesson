import 'package:flutter/material.dart';

class AButtonWidget extends StatefulWidget {
  const AButtonWidget({super.key});

  @override
  State<AButtonWidget> createState() => _AButtonWidgetState();
}

class _AButtonWidgetState extends State<AButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Widget")),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Icon
            IconButton(
              onPressed: () {
                print("Add");
              },
              icon: Icon(Icons.add),
            ),

            //Text
            TextButton(
              onPressed: () {
                print("clear");
              },
              child: Text("Clear"),
            ),

            // button
            ElevatedButton(
              onPressed: () {
                print("clear all");
              }, 
              child: Text("Clear All"),
            ),

            // InkWell
            InkWell(
              onTap: () => print("Spider man"),
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://i.pinimg.com/736x/c0/cd/05/c0cd051903c77299d0e4a494ce07b729.jpg",
                    ),
                    fit: BoxFit.cover
                    
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
