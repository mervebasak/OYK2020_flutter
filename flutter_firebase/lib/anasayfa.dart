import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Anasayfa extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePage();
  }
}

class HomePage extends State<Anasayfa>
{

  final Firestore _firestore = Firestore.instance;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anasayfa"),
          backgroundColor: Colors.pink,
        ),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text("Veri Ekleme"),
                  onPressed: (){
                    Map<String, dynamic> veriEkle = Map();
                    veriEkle["isim"] = "merve";
                    veriEkle["yas"] = "24";
                    veriEkle["sehir"] = "Eskişehir";

                    _firestore.collection("Kullanıcılar").document("oğrenci").setData(veriEkle);

                    _firestore.collection("Kullanıcılar").document("oğretmen").setData(veriEkle);
                  },
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text("Veri Silme"),
                  onPressed: (){
                    _firestore.document("Kullanıcılar/oğrenci").delete();
                    _firestore.document("Kullanıcılar/oğretmen").updateData({"isim" : FieldValue.delete()});
                  },
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text("Veri Güncelleme"),
                  onPressed: (){
                    _firestore.document("Kullanıcılar/oğrenci").updateData({
                        "isim" : "onur"
                        }
                    );
                  },
                ),
                RaisedButton(
                  color: Colors.greenAccent,
                  child: Text("Veri okuma"),
                  onPressed: veriOkuma

    ),

              ],


                ),

            ),
          ),
        ),
      );

  }
  Future veriOkuma() async {
    DocumentSnapshot documentSnapshot = await _firestore.document("kullamıcılar/ogrenci").get();
    debugPrint("Ogrencinin ismi :" + documentSnapshot.data["isim"].toString());
    debugPrint("Ogrencinin ozellikleri :" + documentSnapshot.data.toString());
    debugPrint("Ogrencinin yasi :" + documentSnapshot.data["yas"].toString());
  }
}



