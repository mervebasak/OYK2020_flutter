import 'package:flutter/material.dart';

class Csayfasi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        debugPrint("Butona basmadan geri döndü");
        Navigator.pop(context, true);
        return Future.value(false);


      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("C Sayfası"),
        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Text("C Sayfasına hoş geldiniz!"),
              RaisedButton(
                onPressed: (){
                  Navigator.pop<bool>(context,true);
                },

                child: Text("Anasayfaya dön ve veri gönder"),
                color: Colors.deepPurple[200],

              )
            ],
          ),
        ),
      ),
    );
  }
}