import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.blue),
      home: new MyHomePage(title: 'HomePage'),
      routes: <String, WidgetBuilder>{
        '/a': (BuildContext context) => new MyPage(
              title: 'A',
            ),
        '/b': (BuildContext context) => new MyPage(
              title: 'B',
            ),
        '/c': (BuildContext context) => new MyPage(
              title: 'c',
            )
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _result = false;

  void _openNewPage() {
    Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new Center(
            child: Text('定制路由页面'),
          );
        },
        transitionsBuilder: (_, Animation<double> animation, __, Widget chile) {
          return new FadeTransition(
              opacity: animation,
              child: new RotationTransition(
                turns:
                    new Tween<double>(begin: 0.5, end: 1.0).animate(animation),
                child: Text('Hello Dart'),
              ));
        }));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(widget.title),
      ),
      body: new Center(
        child: new Text('open the special page'),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _openNewPage,
        child: new Icon(Icons.open_in_new),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
    );
  }
}
