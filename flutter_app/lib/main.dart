import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => MyApp2();
}

class MyApp2 extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Flutter Dersleri"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(

              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.green[100],
                  child: Icon(
                    Icons.photo,
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green[200],
                  child: Icon(
                    Icons.photo,
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green[300],
                  child: Icon(
                    Icons.photo,
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green[400],
                  child: Icon(
                    Icons.photo,
                  ),
                ),
              ],
            ),
            FloatingActionButton(
              backgroundColor: Colors.red[100],
              child: Icon(
                Icons.photo,
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.red[200],
              child: Icon(
                Icons.photo,
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.red[300],
              child: Icon(
                Icons.photo,
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.red[400],
              child: Icon(
                Icons.photo,
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.red[500],
              child: Icon(
                Icons.photo,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
