import 'package:flutter/material.dart';

class TextFieldWideget extends StatefulWidget {
  const TextFieldWideget({super.key});

  @override
  State<TextFieldWideget> createState() => _TextFieldWidegetState();
}

class _TextFieldWidegetState extends State<TextFieldWideget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Field"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Text Input",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
            TextField(
              decoration: InputDecoration(
                labelText: "username",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            Text("Password",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "password",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed:() {},
                child: Text("Login")),
            )
          ],
        ),
      ),
    );
  }
}