import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  bool isCheck = false;
  String gender = "Male";
  String country = "Cambodia";
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Widgeet")),
      body: Padding(
        padding: EdgeInsets.all(16),
        // Check box
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Checkbox", style: TextStyle(fontWeight: FontWeight.w800)),
            SizedBox(height: 10),
            Checkbox(
              value: isCheck,
              onChanged: (value) {
                setState(() {
                  isCheck = value!;
                });
              },
            ),
            // Radio
            Text("Radio Button", style: TextStyle(fontWeight: FontWeight.w800)),
            SizedBox(height: 10),
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
                Text("Female"),
                // Dropdown
              ],
            ),
            SizedBox(height: 10),
            const Text(
              "Dropdown",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 10),
            DropdownButtonFormField(
              value: country,
              items: [
                DropdownMenuItem(value: "Cambodia", child: Text("Cambodia")),
                DropdownMenuItem(
                  value: "United State",
                  child: Text("United State"),
                ),
                DropdownMenuItem(value: "Vitename", child: Text("Vitename")),
              ],
              onChanged: (value) {
                setState(() {
                  country = value!;
                });
              },
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            SizedBox(height: 10),
            Text("Switch", style: TextStyle(fontWeight: FontWeight.w800)),
            Switch(
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
