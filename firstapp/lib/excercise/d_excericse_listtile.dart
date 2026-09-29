import 'package:flutter/material.dart';

class DExcericseListtile extends StatefulWidget {
  const DExcericseListtile({super.key});

  @override
  State<DExcericseListtile> createState() => _DExcericseListtileState();
}
class _DExcericseListtileState extends State<DExcericseListtile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting"), centerTitle: true),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person, color: Colors.deepPurple.shade500,),
            ),
            title: Text("Profile"),
            subtitle: Text("Edit your profile"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.language,color: Colors.green,),
            title: Text("Language"),
            subtitle: Text("English"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout,color: Colors.red,),
            title: Text("Logout"),
            subtitle: Text("Sign out account"),
            trailing: Icon(Icons.arrow_forward_ios),
          )
        ],
      ),
    );
  }
}
