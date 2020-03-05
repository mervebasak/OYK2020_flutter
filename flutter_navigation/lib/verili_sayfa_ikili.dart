import 'package:flutter/material.dart';

class Dsayfasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("D sayfası"),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pop(context, ' D sayfasi çok güzel');
                  },
                  child: Text("Anasayfaya string veri gönder"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pop(context, 100);
                  },
                  child: Text("Anasayfaya string veri gönder"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}