import 'package:flutter/material.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});
  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid View")),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            Image.network(
              "https://i.pinimg.com/736x/8d/79/c7/8d79c76c6e74d7b4a05810df2d5c5a6e.jpg",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i.pinimg.com/736x/84/e2/bc/84e2bc7a4ebb1a0900676ec6cf09f4c0.jpg",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i.pinimg.com/736x/97/91/dd/9791dd6172039e368cc741c657b8751f.jpg",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i.pinimg.com/736x/59/53/0c/59530c6a7da977e248730e55da118954.jpg",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i.pinimg.com/736x/41/32/28/4132287f80496d639b915584901a2bac.jpg",
              fit: BoxFit.cover,
            ),
            Image.network(
              "https://i.pinimg.com/736x/41/32/28/4132287f80496d639b915584901a2bac.jpg",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
