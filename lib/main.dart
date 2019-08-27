//import 'package:flutter/material.dart';
//
//void main()=> runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: '闪屏动画',
//      theme: ThemeData.light(),
//      home: Splash(),
//    );
//  }
//}
//
//class Splash extends StatefulWidget {
//  @override
//  _SplashState createState() => _SplashState();
//}
//
//class _SplashState extends State<Splash> with SingleTickerProviderStateMixin{
//
//  AnimationController _animationController;
//  Animation _animation;
//
//  @override
//  void initState() {
//    super.initState();
//    _animationController = AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
//    _animation = Tween(begin: 0.0,end: 1.0).animate(_animationController);
//
//    _animation.addStatusListener((status){
//      if(status == AnimationStatus.completed){
//        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>NewHomePage()), (route)=>route==null);
//      }
//    });
//    _animationController.forward();
//  }
//
//  @override
//  void dispose() {
//    _animationController.dispose();
//    super.dispose();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return FadeTransition(
//      opacity: _animation,
//      child: Image.network(
//        'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1566900762053&di=13c07530ecfdd63ffe149f037414e757&imgtype=0&src=http%3A%2F%2Fphotocdn.sohu.com%2F20130614%2FImg378816717.jpg',
//        scale: 2.0,
//        fit: BoxFit.cover,
//      ),
//    );
//  }
//}
//
//class NewHomePage extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('美女漂亮'),),
//      body: Center(child: Text('我是首页'),),
//    );
//  }
//}
//

import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '闪屏动画',
      theme: ThemeData.light(),
      home: SplashS(),
    );
  }
}

class SplashS extends StatefulWidget {
  @override
  _SplashSState createState()=> _SplashSState();
}

class _SplashSState extends State<SplashS> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller= AnimationController(vsync: this,duration: Duration(milliseconds: 4000));
    _animation = Tween(begin: 0.0,end: 1.0).animate(_controller);
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>NewHome()), (route)=>route==null);
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
        opacity: _animation,
      child: Image.network(
        'https://timgsa.baidu.com/timg?image&quality=80&size=b10000_10000&sec=1566890831&di=297a62df216c392465e93f539d9a9121&src=http://2a.zol-img.com.cn/product/73/288/ceGwVNogx6HSE.jpg',
        scale: 1.5,
        fit: BoxFit.cover,
      ),
    );
  }
}

class NewHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('来呀，快活啊'),),
      body: Center(child: Text('正正正'),),
    );
  }
}
