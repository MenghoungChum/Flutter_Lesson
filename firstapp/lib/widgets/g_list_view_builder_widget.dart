import 'package:flutter/material.dart';

class GListViewBuilderWidget extends StatefulWidget {
  const GListViewBuilderWidget({super.key});

  @override
  State<GListViewBuilderWidget> createState() => _GListViewBuilderWidgetState();
}

class _GListViewBuilderWidgetState extends State<GListViewBuilderWidget> {
  List<String> list = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view builder widget"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      width: 100,
                      color: Colors.amber,
                      child: Center(child: Text(index.toString())),
                    ),
                  );
                },
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Text((index+1).toString()),
                    title: Text(list[index]),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
