import 'package:flutter/material.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'TextWidget',
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextWidget"),
        ),
        body: Center(
        child: Container(
          child: new Image.network(
            'https://img4.mukewang.com/szimg/5c7e6835087ef3d806000338.jpg',
            scale: 2.0,
            repeat: ImageRepeat.repeat,
          ),
          width: 400.0,
          height: 300.0,
          color: Colors.lightBlue,
        )
        )
      )
    );

}
}
