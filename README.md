# flutter-toturial
start flutter

## ContainerWidget容器
```
container修饰器decoration
LinearGradient实现渐变色
```

## ImageWidget的几种加入形式

1. ImageWidget的几种加入形式
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
