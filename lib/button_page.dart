import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => new _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text('Button demo'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/login');
              },
              child: Text('Hello'),
              textColor: Colors.orange,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Color'),
              textTheme: ButtonTextTheme.accent,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Hello'),
              color: Colors.orange,
              elevation: 2.0,
              highlightElevation: 8.0,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Hello'),
              padding: const EdgeInsets.only(
                left: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
