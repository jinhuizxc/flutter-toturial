import 'package:flutter/material.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'TextWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListViewWidget"),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.network('https://img4.mukewang.com/szimg/5c18d2d8000141c506000338.jpg'),
            new Image.network('https://img4.mukewang.com/szimg/5c7e6835087ef3d806000338.jpg'),
            new Image.network('https://img2.mukewang.com/szimg/5c3ef588088403df06000338.jpg'),
            new Image.network('https://img3.mukewang.com/szimg/5b3082da0001d7e905400300.jpg'),
          ],
        ),
      )
    );

}
}
