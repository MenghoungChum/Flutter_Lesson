import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Container"), centerTitle: true),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          // margin: EdgeInsets.only(left: 60),
          // padding: EdgeInsets.only(left: 70),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(50),
            // borderRadius: BorderRadius.only(
            //   topRight: Radius.circular(60),
            //   topLeft: Radius.circular(40),
            //   bottomLeft: Radius.circular(70),
            //   bottomRight: Radius.circular(90),
            // ),
            border: Border.all(color: Colors.black, width: 5),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.green,
                offset: Offset(50, 50),
              ),
              BoxShadow(
                blurRadius: 20,
                color: Colors.red,

                offset: Offset(40, 40),
              ),
              BoxShadow(
                blurRadius: 20,
                color: Colors.yellow,

                offset: Offset(30, 30),
              ),
              BoxShadow(
                blurRadius: 20,
                color: Colors.blue,
                offset: Offset(20, 20),
              ),
              BoxShadow(
                blurRadius: 20,
                color: Colors.pink,
                offset: Offset(10, 10),
              ),
            ],
            image: DecorationImage(
              image: NetworkImage(
                "https://i.pinimg.com/1200x/58/3d/9a/583d9ab908b4a0f00839b88009da6065.jpg",
              ),
              fit: BoxFit.fill
            ),
          ),

          // child: Center(
          //   child: Text(
          //     "data",
          //     style: TextStyle(fontSize: 30, color: Colors.white),
          //   ),
          // ),
        ),
      ),
    );
  }
}
