import 'package:flutter/material.dart';

class Asayfasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A sayfası"),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Text("A sayfasına Hoş Geldiniz!")
            ],
          ),


        ),
      ),
    );
  }

}