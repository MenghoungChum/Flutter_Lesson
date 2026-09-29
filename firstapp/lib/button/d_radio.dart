import 'package:flutter/material.dart';

class DRadio extends StatefulWidget {
  const DRadio({super.key});

  @override
  State<DRadio> createState() => _DRadioState();
}

class _DRadioState extends State<DRadio> {
  int country = 1;
  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Radio Box")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Please select Gender"),
            Row(
              children: [
                Radio(
                  value: "Male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ), 
                Text("Male"),
                Radio(
                  value: "Female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                Text("Male"),
              ],
            ),
            SizedBox(
              width: 200,
              child: DropdownButtonFormField(
                value: 1,
                items: [
                  DropdownMenuItem(value: 1, child: Text("Cambodia")),
                  DropdownMenuItem(value: 2, child: Text("Loas")),
                  DropdownMenuItem(value: 3, child: Text("Vietname")),
                  DropdownMenuItem(value: 4, child: Text("China")),
                ],
                onChanged: (value) {
                  var data;
                  data = value;
                  print(data);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder()
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
