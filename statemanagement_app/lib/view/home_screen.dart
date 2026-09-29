import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Get.back();
              // Navigator.pop(context);
            },
            child: const Text("Back"),
          ),

          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text(
                    "Flutter Snackbar",
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            },
            child: const Text("Flutter snackbar"),
          ),

          ElevatedButton(
            onPressed: () {
              Get.snackbar("Hello", "Message");
            },
            child: const Text("GetX snackbar"),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(isSwitch ? "ON" : "OFF"),

              const SizedBox(width: 10),

              Switch(
                value: isSwitch,
                onChanged: (value) {
                  setState(() {
                    isSwitch = value;
                  });
                  print(isSwitch);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}