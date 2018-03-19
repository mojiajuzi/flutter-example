import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget contineWiget = new Center();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Hello'),
            new Container(
              constraints: new BoxConstraints.expand(
                  height: Theme.of(context).textTheme.display1.fontSize * 1.1 +
                      200.0),
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(top: 10.3, left: 20.0),
              color: Colors.teal.shade700,
              alignment: Alignment.center,
              child: new Text(
                'Hello World',
                style: Theme
                    .of(context)
                    .textTheme
                    .display1
                    .copyWith(color: Colors.white),
              ),
              foregroundDecoration: new BoxDecoration(
                  image: new DecorationImage(
                      image: new NetworkImage(
                          "https://lccdn.phphub.org/uploads/sites/hG5JuDSqZ7Y26Kuh0Qat8EYv6XNT0fGc.png"),
                      centerSlice:
                          new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0))),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
