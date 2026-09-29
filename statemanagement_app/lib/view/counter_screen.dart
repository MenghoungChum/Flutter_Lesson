import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagement_app/controller/counter_controller.dart';
import 'package:statemanagement_app/view/home_screen.dart';

// ignore: must_be_immutable
class CounterScreen extends StatelessWidget {
  new({super.key});

  CounterController controller = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter value via Getx"),
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HomeScreen()),
              // );
              Get.to(HomeScreen());
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Counter value",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Obx(
            () => Text(
              "${controller.counter}",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  controller.decrement();
                },
                label: Icon(Icons.remove),
              ),
              SizedBox(width: 20),
              ElevatedButton.icon(
                onPressed: () {
                  controller.increment();
                },
                label: Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              controller.reset();
            },
            child: Text("Reset", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
