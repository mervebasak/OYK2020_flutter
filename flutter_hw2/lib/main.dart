import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ay Hakkında"),
        ),
        body: AyinTurleri(),
      ),
    );
  }
}

class AyinTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Ay'ın Evreleri",
            style: TextStyle(fontSize: 30),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Image.asset("images/ay1.png"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset("images/ay2.png"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset("images/ay3.png"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset("images/ay4.png"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 200,
                width: 200,
                child: FadeInImage.assetNetwork(
                    placeholder: "images/looding.gif",
                    image:
                        "https://static4.depositphotos.com/1001439/384/v/600/depositphotos_3840930-stock-illustration-sun-icon-vector.jpg"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  debugPrint("Flat Button'a tıklandı.");
                },
                child: Text(
                  "Flat Button",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
