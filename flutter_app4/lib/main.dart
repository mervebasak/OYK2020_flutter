import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Example"),
        ),
        body: BodyLayout(),
      ),

    );
  }
}
class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context){
  return ListView(
    children: ListTile.divideTiles(
      context: context,
        tiles: [
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),radius: 15,),
            title: Text("Merve Basak"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),radius: 15,),
            title: Text("Kadriye Macit"),
              trailing: Icon(Icons.arrow_forward_ios)
          ),
          ListTile(
            leading: CircleAvatar(child: Icon(Icons.person),radius: 15,),
            title: Text("Merve Basak"),
              trailing: Icon(Icons.arrow_forward_ios)
          ),
        ],
    ).toList()

  );
}
