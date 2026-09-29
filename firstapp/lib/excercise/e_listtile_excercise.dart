import 'package:flutter/material.dart';

class EListtileExcercise extends StatefulWidget {
  const EListtileExcercise({super.key});

  @override
  State<EListtileExcercise> createState() => _EListtileExcerciseState();
}

class _EListtileExcerciseState extends State<EListtileExcercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 4),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Top Rated",
                            style: TextStyle(
                              color: Colors.blue.shade800,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "Buy\nFurniture",
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.table_restaurant_rounded,
                        size: 100,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Card(
                    color: Colors.blue.shade300,
                    child: ListTile(
                      leading: Icon(Icons.bed, size: 50, color: Colors.black),
                      title: Text(
                        "Bed",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("King Size Bed"),
                      trailing: Icon(Icons.tram_sharp),
                    ),
                  ),
                  Card(
                    color: Colors.cyan.shade300,
                    child: ListTile(
                      leading: Icon(
                        Icons.chair_alt,
                        size: 50,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Bed",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("King Size Bed"),
                      trailing: Icon(Icons.tram_sharp),
                    ),
                  ),
                  Card(
                    color: Colors.deepPurpleAccent.shade100,
                    child: ListTile(
                      leading: Icon(
                        Icons.weekend,
                        size: 50,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Bed",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text("King Size Bed"),
                      trailing: Icon(Icons.tram_sharp),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
