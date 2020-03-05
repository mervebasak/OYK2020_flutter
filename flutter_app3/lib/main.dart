import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Resim Ekleme Türleri"),
        ),
        body: ImageTurleri(),
      ),
    );
  }
}

class ImageTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[100],
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Image.asset("images/yıldız.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset("images/yıldız.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset("images/yıldız.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRks-IlFs7ellS7tTo24tx2WP9DjFoiz_MQe7foULBVx6v74DYX&s"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRks-IlFs7ellS7tTo24tx2WP9DjFoiz_MQe7foULBVx6v74DYX&s"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRks-IlFs7ellS7tTo24tx2WP9DjFoiz_MQe7foULBVx6v74DYX&s"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("images/yıldız.jpg"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("images/yıldız.jpg"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM8X59WPsmme6kAe2uQ7zfAKEf37o0JsYNC_hrh3Z9yoFBkVT_&s"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM8X59WPsmme6kAe2uQ7zfAKEf37o0JsYNC_hrh3Z9yoFBkVT_&s"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                child: FadeInImage.assetNetwork(
                    placeholder: "images/looding.gif",
                    image:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSM8X59WPsmme6kAe2uQ7zfAKEf37o0JsYNC_hrh3Z9yoFBkVT_&s"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
