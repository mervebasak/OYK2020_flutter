import 'package:flutter/material.dart';
import 'package:flutter_navigation/veri_getir.dart';
import 'package:flutter_navigation/verili_sayfa.dart';
import 'package:flutter_navigation/verili_sayfa_ikili.dart';
import 'package:flutter_navigation/yeni_sayfa.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigasyon İşlemleri"),
          backgroundColor: Colors.green,
        ),
        body: NavigasyonIslemleri(),
      ),
    );
  }
}

class NavigasyonIslemleri extends StatelessWidget {
  String gonderilenVeri = "Navigasyon İşlemleri Sayfasından Geldim! :) ";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Asayfasi()));
          },
          child: Text("A sayfasına git"),
          color: Colors.red[200],
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Bsayfasi(gonderilenVeri)));
          },
          child: Text("B sayfasına veri gönder"),
          color: Colors.blue[200],
        ),
        RaisedButton(
          onPressed: () {
            Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Csayfasi()))
                .then((gelenDeger) {
              debugPrint("gelen değer $gelenDeger");
            });
          },
          child: Text("C sayfasına git ve veri getir"),
          color: Colors.orange[200],
        ),
        RaisedButton(
          onPressed: () async {
            //yine navigator işlemlerini bir değere atıyoruz
            String value =
                await Navigator.push(context, new MaterialPageRoute<String>(
                    //navigator ile yönlendirdiğimiz widget
                    builder: (BuildContext context) {
              //center'ın içinde GestureDetector'a yönlendiriyoruz
              return Center(
                child: GestureDetector(
                    //yönlendirilen widget'ta bir container oluşturduk
                    child: Container(
                        color: Colors.greenAccent,
                        child: Text(
                          'Ekran silindi,'
                          ' geri dönmek için tıklayın',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        )),
                    onTap: () {
                      Navigator.pop(context, "Anasayfaya dönüldü");
                    }),
              );
            }));

            print(value);
          },
          child: new Text("Ekranı değiştirip geri dön"),
        ),
        RaisedButton(
          onPressed: () {
            _navigateAndDisplaySelection(context);
          },
          child: Text("D sayfasına git, veri tipi getir ve göster"),
          color: Colors.green[200],
        ),
      ],
    );
  }

  _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Dsayfasi()),
    );

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(
          duration: Duration(seconds: 5),
          content: Text("Gelen verimiz: $result")));
  }
}
