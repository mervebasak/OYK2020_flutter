import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_firebase/register.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'anasayfa.dart';

void main() => runApp(MyApp());

//artık dinamik bir yapıda olduğu için uygulamamız
//StatefulWidget'a bağlıyoruz
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return InputIslemleri();
  }
}

class InputIslemleri extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Input İşlemleri"),
            backgroundColor: Colors.pink,
          ),
          body: LoginEkrani()),
    );
  }
}

class LoginEkrani extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // girilen veriyi kontrol etmek için
  // TextEditingController nesnesinden bir değişken oluşturuyoruz.
  final emailController = TextEditingController();
  final parolaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text(
                      "Kullanıcıdan veri alma işlemleri",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      width: 200,
                      height: 200,
                      child: Image.asset("resimler/anime_b.png")),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          keyboardType: TextInputType.text,
                          //klavye tipi
                          maxLength: 20,
                          //alabilecek max karakter
                          cursorColor: Colors.pink,
                          //imleç rengi
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.wb_sunny),
                              //başına ikon
                              hintText: "Email",
                              //y silik yazı
                              suffixIcon: Icon(Icons.brightness_3),
                              //sonuna ikon
                              labelText: "Kullanıcı adı",
                              //tıklandığında yazarken de hala yukarıda kalır
                              border: OutlineInputBorder(
                                  //dışını kutu içine alır
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              filled: true,
                              // fillColor ile renk kodunu çalıştırmak için true olmalı
                              fillColor: Colors.red.shade50 // arkafonun rengi
                              ),
                          controller:
                              emailController, // girilen veriyi kontrol etmek için ekliyoruz
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          obscureText: true,
                          //gizlenebilirlik açık
                          maxLength: 8,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key),
                            hintText: "Parola",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                          controller: parolaController,
                        ),
                        RaisedButton(
                          child: Text("Giriş yap"),
                          color: Colors.pink[200],
                          onPressed: () {
                            _auth
                                .signInWithEmailAndPassword(
                                    email: emailController.text,
                                    password: parolaController.text)
                                .then((oturumAcildi) {
                              debugPrint("Giriş Başarılı");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Anasayfa()));
                            }).catchError(
                                    (hata) => debugPrint(hata.toString()));
                          },
                        ),
                        FlatButton(
                          child: Text(
                            "Kayıt ol",
                            style: TextStyle(color: Colors.pink),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Kayit()),
                            );
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
