import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Example"),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
/*Ülkeleri ListView kullanarak listeme örneği
    final ulkeler = ["Türkiye","Polonya","Portekiz","Macaristan","Almanya","Fransa","İtalya","Avusturya"];

    return ListView.builder(
     itemCount: ulkeler.length,
     itemBuilder: (context, index){

      return ListTile(
        title: Text(ulkeler[index]),
        subtitle: Text("Ülke"),
        onTap: () => print(ulkeler[index] + "tıklandı"),
      );
    }
    );

 */

  return Column(children: <Widget>[
    Card(
        margin: EdgeInsets.all(10),
        elevation: 20, //Alttan yüksekliği. Gri gibi bir renk bırakıyor.
        color: Colors.lightBlue,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
            radius: 30,
          ),
          title: Text("Merve Basak"),
          subtitle: Text("Öğrenci"),
          trailing: Icon(Icons.call),
        )),
    Divider(
      color: Colors.black,
      height: 30,
    ),
    Card(
        margin: EdgeInsets.all(10),
        elevation: 20, //Alttan yüksekliği. Gri gibi bir renk bırakıyor.
        color: Colors.lightBlue,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
            radius: 30,
          ),
          title: Text("Merve Basak"),
          subtitle: Text("Öğrenci"),
          trailing: Icon(Icons.call),
        )),
    Divider(
      color: Colors.black,
      height: 30,
    ),
    Card(
        margin: EdgeInsets.all(10),
        elevation: 20, //Alttan yüksekliği. Gri gibi bir renk bırakıyor.
        color: Colors.lightBlue,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
            radius: 30,
          ),
          title: Text("Merve Basak"),
          subtitle: Text("Öğrenci"),
          trailing: Icon(Icons.call),
        )),
    Divider(
      color: Colors.black,
      height: 30,
    ),
    Card(
        margin: EdgeInsets.all(10),
        elevation: 20, //Alttan yüksekliği. Gri gibi bir renk bırakıyor.
        color: Colors.lightBlue,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
            radius: 30,
          ),
          title: Text("Merve Basak"),
          subtitle: Text("Öğrenci"),
          trailing: Icon(Icons.call),
        )),
    Divider(
      color: Colors.black,
      height: 30,
    ),
    Card(
        margin: EdgeInsets.all(10),
        elevation: 20, //Alttan yüksekliği. Gri gibi bir renk bırakıyor.
        color: Colors.lightBlue,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
            radius: 30,
          ),
          title: Text("Merve Basak"),
          subtitle: Text("Öğrenci"),
          trailing: Icon(Icons.call),
        )),
  ]);
}
