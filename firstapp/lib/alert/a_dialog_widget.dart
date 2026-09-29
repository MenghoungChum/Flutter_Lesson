
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ADialogWidget extends StatefulWidget {
  const ADialogWidget({super.key});

  @override
  State<ADialogWidget> createState() => _ADialogWidgetState();
}

class _ADialogWidgetState extends State<ADialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dailogs"),
        centerTitle: true,
        actions: [
          PopupMenuButton<int>(
            onSelected: (value) {
              if (value == 1) alertDialogMessage();
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: 1,
                  child: Row( 
                    children: [
                      Icon(Icons.add),
                      SizedBox(width: 10),
                      Text("Add"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(width: 10),
                      Text("Edit"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: [
                      Icon(Icons.delete),
                      SizedBox(width: 10),
                      Text("Remove"),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Row(
                    children: [
                      Icon(Icons.download),
                      SizedBox(width: 10),
                      Text("Download"),
                    ],
                  ),
                ),
              ];
            },
          ),
        ],
      ),
      body: Column(
        children: [
          card("Alert Dialog", alertDialogMessage),
          card("Simple Dialog", simpleDialogMessage),
          card("Dialog", dialogMessage),
          card("Date Picker", showDataMessage),
          card("Time Picker", showTimeMessage),
          card("Show Alert Dialog IOS Style", showIOSstyleMessage),
          card("PopupMenuButton", showBottonSheet),
        ],
      ),
    );
  }

  Widget card(String title, Function show) {
    return Card(
      color: Colors.white,
      child: ListTile(
        title: Text(title),
        onTap: () {
          show();
        },
      ),
    );
  }

  void alertDialogMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Alert Dialog"),
          content: Text("This is content of Alert Dialog"),
          actions: [
            ElevatedButton(onPressed: () {}, child: Text("Cancel")),
            ElevatedButton(onPressed: () {}, child: Text("Cancel")),
          ],
        );
      },
    );
  }

  void simpleDialogMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("Simple Dialog"),
          children: [
            SimpleDialogOption(
              onPressed: () {
                print("Press");
              },
              child: Text("Male"),
            ),
            SimpleDialogOption(
              onPressed: () {
                print("Press");
              },
              child: Text("Female"),
            ),
          ],
        );
      },
    );
  }

  void dialogMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image(
            image: NetworkImage(
              "https://tse1.mm.bing.net/th/id/OIP.tMguJ13n6SZVxRBHTh_VtwHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
            ),
          ),
        );
      },
    );
  }

  void showDataMessage() async {
    await showDatePicker(
      context: context,
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      initialDate: DateTime.now(),
    );
  }

  void showTimeMessage() {
    showTimePicker(context: context, initialTime: TimeOfDay.now());
  }

  void showIOSstyleMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: Text("ShowData"),
          content: Text("This is content of ISO alert message"),
          actions: [
            TextButton(onPressed: () {}, child: Text("Cancel")),
            TextButton(onPressed: () {}, child: Text("OK")),
          ],
        );
      },
    );
  }

  void showBottonSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 300,
          color: Colors.lightGreenAccent,
        );
      },
    );
  }
}
