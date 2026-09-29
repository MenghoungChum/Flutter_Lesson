//

import 'package:flutter/material.dart';

class IGridViewWidget extends StatefulWidget {
  const IGridViewWidget({super.key});

  @override
  State<IGridViewWidget> createState() => _IGridViewWidgetState();
}

class _IGridViewWidgetState extends State<IGridViewWidget> {
  List<String> imageList =[
    "https://i.pinimg.com/736x/3d/58/f0/3d58f092de272e57dc130816f3afb6f7.jpg",
    "https://i.pinimg.com/1200x/d1/2b/33/d12b332c75ffa53bacb15fe3e21ac592.jpg",
    "https://i.pinimg.com/736x/37/49/af/3749af262fdd56bfd31188d457a9e676.jpg",
    "https://i.pinimg.com/736x/37/49/af/3749af262fdd56bfd31188d457a9e676.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View Builder")),
      body: GridView.builder(
        itemCount: imageList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage(imageList[index]))
            ),
          );
        },
      ),
    );
  }
}
