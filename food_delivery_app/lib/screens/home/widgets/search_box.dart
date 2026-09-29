import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hint: Text("Search for food or Restaurant"),//placeholder
        filled: true, 
        fillColor: Colors.white,
        prefixIcon: Icon(Icons.search),
        contentPadding: const EdgeInsets.symmetric(vertical: 18),//padding in text field
        border: OutlineInputBorder(// design border for input field
          borderSide: BorderSide.none,  // delete default border of input field
          borderRadius: BorderRadius.circular(18)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1.5
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none,
        )
      ),
    );
  }
}