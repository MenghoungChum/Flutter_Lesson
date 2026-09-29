import 'package:flutter/material.dart';

class DListTileWidget extends StatefulWidget {
  const DListTileWidget({super.key});

  @override
  State<DListTileWidget> createState() => _DListTileWidgetState();
}

class _DListTileWidgetState extends State<DListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListTile Widget"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.person,size: 35,color: Colors.white,),),
            title: Text("Menghoung"),
            subtitle: Text("098765456789"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.person,size: 35,color: Colors.white,),),
            title: Text("Dara"),
            subtitle: Text("0456789678"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person,size: 35,color: Colors.white,),),
              title: Text("Vichara"),
              subtitle: Text("01234567"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person,size: 35,color: Colors.white,),),
              title: Text("Bota"),
              subtitle: Text("098765456789"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(Icons.person,size: 35,color: Colors.white,),),
              title: Text("Kanha"),
              subtitle: Text("098765456789"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
        ],
      ),
    );
  }
}