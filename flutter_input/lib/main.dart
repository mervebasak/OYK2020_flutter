import 'package:flutter/material.dart';



void main() => runApp(MyApp());

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
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyI8FQwQLlJzrTOym-qRB7osuSBKgtICb6Dnl64cre0f1Q0YiZpQ&s")),
              ),
              TextField(
                keyboardType: TextInputType.text,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person), hintText: "Kullanıcı Adı"),
              ),
              TextField(
                keyboardType: TextInputType.number,
                obscureText: true,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key), hintText: "Parola"),
              ),
              RaisedButton(
                onPressed: () => giris(),
                color: Colors.blue[200],
                child: Text("Giriş"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void giris() {
  debugPrint("3. butona tıklandı.");
}
