import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HValidationForm extends StatefulWidget {
  const HValidationForm({super.key});

  @override
  State<HValidationForm> createState() => _HValidationFormState();
}

class _HValidationFormState extends State<HValidationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validation form"),
      ),
      body: Form(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name"),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter you name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("Submit"))
          ],
        ),
      )),
    );
  }
}