import 'package:flutter/material.dart';

class CCheckboxWidget extends StatefulWidget {
  const CCheckboxWidget({super.key});

  @override
  State<CCheckboxWidget> createState() => _CCheckboxWidgetState();
}

class _CCheckboxWidgetState extends State<CCheckboxWidget> {
  bool checkTask = false;
  Widget rows(String checkboxText) {
    return Row(
      children: [
        Checkbox(
          value: checkTask,
          onChanged: (value) {
            setState(() {
              checkTask = value!; // setState now works properly!
            });
          },
        ),
       Text(checkboxText),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
      body: Column(
        children: [Text("Work", style: TextStyle(fontWeight: FontWeight.w500)),rows("Tasks"),rows("Work meeting")],
      ),
    );
  }
}
