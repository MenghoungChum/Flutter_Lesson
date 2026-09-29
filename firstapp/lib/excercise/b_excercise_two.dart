import 'package:flutter/material.dart';

class BExcerciseTwo extends StatefulWidget {
  const BExcerciseTwo({super.key});

  @override
  State<BExcerciseTwo> createState() => _BExcerciseTwoState();
}

class _BExcerciseTwoState extends State<BExcerciseTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, size: 30, color: Colors.blue.shade800),
        title: Text(
          "Company card",
          style: TextStyle(
            fontSize: 25,
            color: Colors.blue.shade900,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          Icon(
            Icons.question_mark_outlined,
            size: 30,
            color: Colors.blue.shade900,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: Colors.grey.shade500, height: 1),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "The Company card Layout",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Colors.blue.shade900,
                height: 1.2,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(25),
              child: Column(
                spacing: 10,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ABC Company",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue.shade900,
                        ),
                      ),
                      Icon(Icons.home)
                    ],
                  ),
                  
                  SizedBox(height: 5),
                  Divider(height: 2, color: Colors.grey),
                  SizedBox(height: 18),
                  Row(
                    children: [Icon(Icons.phone), Text("Phone : 0772323223")],
                  ),
                  Row(
                    children: [
                      Icon(Icons.email),
                      Text("Email : menghoung@gmail.com"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on),
                      Text("Address : Phnom Penh"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.timelapse_rounded),
                      Text("Open : Monday-Saturday"),
                    ],
                  ),
                  SizedBox(height: 18),
                  Divider(height: 2, color: Colors.grey),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade800,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text(
                              "Call Now",
                              style: TextStyle(color: Colors.white,fontSize: 22),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.blue.shade500,
                            ),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Text("Direction",style: TextStyle(fontSize: 22),),
                          ),
                        )
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage("https://i.pinimg.com/1200x/58/3d/9a/583d9ab908b4a0f00839b88009da6065.jpg"),
                  fit: BoxFit.cover
                )
              )
            )
          ],
        ),
      ),
    );
  }
}
