import 'package:flutter/material.dart';

class Bsayfasi extends StatelessWidget{
  String gelenVeri;

  Bsayfasi(this.gelenVeri);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("B sayfası"),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Text(gelenVeri)
            ],
          ),
        ),
      ),
    );
  }

}