import 'package:flutter/material.dart';

class MyButtonBar extends StatefulWidget {
  @override
  _MyButtonBarState createState() => new _MyButtonBarState();
}

class _MyButtonBarState extends State<MyButtonBar> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('ButtonBar demo'),
      ),
      body: new Center(
        child: ButtonBar(
          mainAxisSize: MainAxisSize.min,
          alignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Button1'),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Button2'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
