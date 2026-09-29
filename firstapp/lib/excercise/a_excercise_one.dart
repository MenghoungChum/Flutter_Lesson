import 'package:flutter/material.dart';

class AExcerciseOne extends StatefulWidget {
  const AExcerciseOne({super.key});

  @override
  State<AExcerciseOne> createState() => _AExcerciseOneState();
}

class _AExcerciseOneState extends State<AExcerciseOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,size: 30,),
        title: Text("Flutter Layouts",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
        actions: [
          Icon(Icons.question_mark_rounded,size: 30,color: Colors.blueGrey,)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Student Profile Card",style: TextStyle(fontSize: 50),textAlign: TextAlign.center,),
          Container(
            width: 350,
            height: 280,
            decoration: BoxDecoration(
              color: Colors.blue.shade200,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: Colors.grey,
                width: 2
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.blue.shade300,
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Text("Student Profile",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Colors.blue.shade900),),
                Divider(
                  color: Colors.blue,
                  thickness: 3,
                ),
                Text("Name : Jonh",style: TextStyle(fontSize: 18),),
                Text("ID : 20022",style: TextStyle(fontSize: 18),),
                Text("Major : IT",style: TextStyle(fontSize: 18),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 250,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.date_range),
                          Text("Age: 20"),
                          SizedBox(width: 30,),
                          Icon(Icons.person_outline),
                          Text("Male")
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}