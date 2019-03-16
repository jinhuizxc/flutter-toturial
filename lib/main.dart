import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: '电影海报实例',
        home: Scaffold(
            appBar: AppBar(
              title: new Text('电影海报实例'),
            ),
            body: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2.0, // 外边距间隙
                crossAxisSpacing: 2.0,
                childAspectRatio: 0.7,
              ),
              children: <Widget>[
                new Image.network('http://img5.mtime.cn/mt/2019/03/01/142658.85498591_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/02/27/171110.19655687_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/02/22/093824.71077859_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/25/105549.53627008_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/03/01/101315.16281518_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/31/100730.47327985_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/30/152305.14999287_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/09/171109.88229500_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/02/26/173839.19458447_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/31/100730.47327985_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/30/152305.14999287_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/09/171109.88229500_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/02/26/173839.19458447_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/31/100730.47327985_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/30/152305.14999287_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/01/09/171109.88229500_100X140X4.jpg', fit: BoxFit.cover),
                new Image.network('http://img5.mtime.cn/mt/2019/02/26/173839.19458447_100X140X4.jpg', fit: BoxFit.cover),
              ],
            )));
  }
}

// GridView网格列表的使用
class GridCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: const EdgeInsets.all(10.0),
      crossAxisSpacing: 10.0,
      crossAxisCount: 3,
      children: <Widget>[
        new Text("text"),
        new Text("text"),
        new Text("text"),
        new Text("text"),
        new Text("text"),
        new Text("text"),
      ],
    );
  }
}

/**
 * Center(
    child: Container(
    height: 200.0,
    child: MyList1(),
    ),
    //                child: MyList2()
    )
 */
class MyList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(width: 180.0, color: Colors.lightBlue),
        new Container(width: 180.0, color: Colors.amber),
        new Container(width: 180.0, color: Colors.red)
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
        new Image.network(
            'https://img4.mukewang.com/szimg/5c18d2d8000141c506000338.jpg'),
        new Image.network(
            'https://img4.mukewang.com/szimg/5c7e6835087ef3d806000338.jpg'),
        new Image.network(
            'https://img2.mukewang.com/szimg/5c3ef588088403df06000338.jpg'),
        new Image.network(
            'https://img3.mukewang.com/szimg/5b3082da0001d7e905400300.jpg'),
      ],
      scrollDirection: Axis.horizontal,
    );
  }
}
