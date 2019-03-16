import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TextWidget',
        home: Scaffold(
            appBar: AppBar(
              title: Text("ListViewWidget"),
            ),
            body: Center(
              child: Container(
                height: 200.0,
                child: MyList1(),
              ),
//                child: MyList2()
            )
        )
    );
  }

}

class MyList1 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180.0,
          color: Colors.lightBlue
        ),
        new Container(
            width: 180.0,
            color: Colors.amber
        ),
        new Container(
            width: 180.0,
            color: Colors.red
        )
      ],
    );
  }
}

// 重新自定义类
class MyList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Image.network('https://img4.mukewang.com/szimg/5c18d2d8000141c506000338.jpg'),
        new Image.network('https://img4.mukewang.com/szimg/5c7e6835087ef3d806000338.jpg'),
        new Image.network('https://img2.mukewang.com/szimg/5c3ef588088403df06000338.jpg'),
        new Image.network('https://img3.mukewang.com/szimg/5b3082da0001d7e905400300.jpg'),
      ],
      scrollDirection: Axis.horizontal,
    );
  }
}
