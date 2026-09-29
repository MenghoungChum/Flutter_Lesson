import 'package:flutter/material.dart';

class ETextFieldWidgte extends StatefulWidget {
  const ETextFieldWidgte({super.key});

  @override
  State<ETextFieldWidgte> createState() => _ETextFieldWidgteState();
}

class _ETextFieldWidgteState extends State<ETextFieldWidgte> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Information"),
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Enter name",
              prefixIcon: Icon(Icons.person),
              suffixIcon: Icon(Icons.delete),
              hintStyle: TextStyle(color: Colors.white),
              labelText: "Name",
              filled: true,
              fillColor: Colors.amber,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30)
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 400,
            child: TextField(
              keyboardType: TextInputType.text,
              expands: true,
              maxLines: null,
              textAlignVertical:  .top,
              decoration: InputDecoration(
                hintText: "Enter name",
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.delete),
                hintStyle: TextStyle(color: Colors.white),
                labelText: "Name",
                filled: true,
                fillColor: Colors.amber,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}