import 'package:flutter/material.dart';

class BFormButtonWidgets extends StatefulWidget {
  const BFormButtonWidgets({super.key});
  @override
  State<BFormButtonWidgets> createState() => _BFormButtonWidgetsState();
}

class _BFormButtonWidgetsState extends State<BFormButtonWidgets> {
  bool isSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSwitch? Colors.black : Colors.white
      ,
      appBar: AppBar(title: Text("Form Button")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children:[
                Switch(
                  value: isSwitch,
                  onChanged: (value) {
                    setState(() {
                      isSwitch = value;
                    });
                  },
                ),
                isSwitch ?
                Icon(Icons.sunny,color: Colors.amber,) :
                Icon(Icons.nightlight_round,color: Colors.amber,),
              ] 
            ),
          ],
        ),
      ),
    );
  }
}
