import 'package:flutter/material.dart';

class MyBootmoSheet extends StatelessWidget {
  myShow(BuildContext context) {
    return showModalBottomSheet<Null>(
        context: context,
        builder: (BuildContext context) {
          return new Container(
            child: Padding(
              padding: EdgeInsets.all(32.0),
              child: Text(
                'This is the modal bottom sheet,Click anywhere to dismiss',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Theme.of(context).accentColor, fontSize: 24.0),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Bottomsheet'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: const Text('SHOW BUTTOM SHEET'),
          onPressed: () {
            myShow(context);
          },
        ),
      ),
    );
  }
}
