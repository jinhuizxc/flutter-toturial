# flutter-toturial
start flutter

## Flutter第三方组件：
[https://github.com/Solido/awesome-flutter]

flutter.io
组件库：https://itsallwidgets.com/

Flutter中文网: https://flutterchina.club/

jdk安装地址：https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

flutter sdk地址：
https://flutter.io/docs/development/tools/sdk/archive#windows

1、StatelessWidget与StatefulWidget的区别：后者用于动态的组件比如进度条，前者用于静态的，后者比前者使用的偏多
2、Flutter upgrate命令更新Fluter SDK
3、vscode常用控制虚拟机的快捷键：
R 键，点击后热加载， 直接查看预览效果。
P 键：在虚拟机中显示网格，工作中常用
O 键：切换Android和ios的预览效果
Q键：退出调试预览模式

https://jimbray.xyz/post/using-flutter-in-china/
Flutter 卡在 packages get 的解决办法
https://www.jianshu.com/p/147f0e20c312

## ContainerWidget容器
```
container修饰器decoration
LinearGradient实现渐变色
```

## ImageWidget的几种加入形式

- Image.asset: 加载资源图片，会使打包时包体过大
- Image.network: 网络资源图片，经常换的或者动态的图片
- Image.file: 本地图片，比如相机照相后的图片预览
- Image.memory: 加载到内存中的图片，Unit8List

- scale属性; 值越大，图片越小；
- Fit属性的详细讲解
拉伸、挤压、裁切；
```
BoxFit.fill  充满容器
BoxFit.contain  全图显示，显示原比例
BoxFit.cover 全图显示，保持原比例，可能被拉伸/裁切
BoxFit.fitWidth  宽度充满
BoxFit.fitHeight 高度充满
BoxFit.scaleDown 保持原图片大小，根据容器选择(图片大于容器可以看出效果)
```
- 图片的混合模式(BlendMode)
```
  color: Colors.greenAccent,
  colorBlendMode: BlendMode.darken,
```
- Repeat属性让图片重复
```
repeat: ImageRepeat.noRepeat, 不重复
repeat: ImageRepeat.repeat, 横纵重复
repeat: ImageRepeat.repeatX, 横向重复
repeat: ImageRepeat.repeatY, 纵向重复
```

## ListView组件的使用
- ListView组件语法讲解
- ListTile的使用(不仅仅在ListView中使用)
- ListView组件的使用

- 加载单个ListTile
```
body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text("闹钟"),

            )
          ],
        ),
```
- 加载多个ListTile
```
body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.access_alarm),
              title: new Text("闹钟"),
            ),
            new ListTile(
              leading: new Icon(Icons.ac_unit),
              title: new Text("雪花"),
            ),
            new ListTile(
              leading: new Icon(Icons.repeat),
              title: new Text("刷新"),
            )
          ],
        ),
```
- 加载图片组件
```
 children: <Widget>[
            new Image.network('https://img4.mukewang.com/szimg/5c18d2d8000141c506000338.jpg'),
            new Image.network('https://img4.mukewang.com/szimg/5c7e6835087ef3d806000338.jpg'),
            new Image.network('https://img2.mukewang.com/szimg/5c3ef588088403df06000338.jpg'),
            new Image.network('https://img3.mukewang.com/szimg/5b3082da0001d7e905400300.jpg'),
          ],
```

## 横向列表的使用
scrollDirection属性讲解
- scrollDirection: Axis.horizontal,  横向滚动或者水平滚动
- scrollDirection: Axis.vertical,  纵向滚动或者垂直方向滚动

- 容器包裹ListView
```
body: Container(
          height: 200.0,
          child: new ListView(
            children: <Widget>[
              new Image.network('https://img4.mukewang.com/szimg/5c18d2d8000141c506000338.jpg'),
              new Image.network('https://img4.mukewang.com/szimg/5c7e6835087ef3d806000338.jpg'),
              new Image.network('https://img2.mukewang.com/szimg/5c3ef588088403df06000338.jpg'),
              new Image.network('https://img3.mukewang.com/szimg/5b3082da0001d7e905400300.jpg'),
            ],
            scrollDirection: Axis.horizontal,
          ),
        )
```

- 自定义类，去加载组件
```
    1. child: MyList()
    // 重新自定义类
    2. class MyList extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return new
        ListView(
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
```


