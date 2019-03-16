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
          child: new Text("hello!!!!!",
          style: TextStyle(
            fontSize: 40.0,
            color: Colors.blue,
            ),
            ),
           alignment: Alignment.topLeft, 
           width: 500.0,
           height: 400.0,
          //  color: Colors.amberAccent,
           padding: const EdgeInsets.fromLTRB(10.0, 40.0, 0.0, 0.0),
           margin: const EdgeInsets.all(20.0),
           decoration: new BoxDecoration(
             gradient: const LinearGradient(
               colors: [
               Colors.lightBlue,
               Colors.greenAccent,
               Colors.purple,
               ]
             )
           )
        )
        )
      )
    );

}
}
