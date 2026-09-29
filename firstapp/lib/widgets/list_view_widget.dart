import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("New Message"),
            subtitle: Text("You have a new message form Dara"),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text("Ordered Confirm"),
            subtitle: Text("Your ordered have been placed successfully"),
          ),
          ListTile(
            leading: Icon(Icons.discount),
            title: Text("Special Discount"),
            subtitle: Text("You get 20% off"),
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: Text("App Update"),
            subtitle: Text("New version is avialable"),
          ),
        ],
      ),
    );
  }
}