import 'package:flutter/material.dart';
import 'dart:async';

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => new _MyDialogState();
}

enum Department { treasury, state }

class _MyDialogState extends State<MyDialog> {
  //simple dialog
  Future<Null> _askedToLead() async {
    var choice = await showDialog<Department>(
        context: context,
        child: SimpleDialog(
          title: Text('Select assignment'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('Treasury department'),
              onPressed: () {
                Navigator.pop(context, Department.treasury);
              },
            ),
            SimpleDialogOption(
              child: Text('State department'),
              onPressed: () {
                Navigator.pop(context, Department.state);
              },
            )
          ],
        ));
    print(choice);
  }

  //alert dialog
  Future<Null> _neverSatisfied() async {
    return showDialog<Null>(
        context: context,
        barrierDismissible: false,
        child: AlertDialog(
          title: Text('Alert'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('you will never be satisfied'),
                Text('You\’re like me. I’m never satisfied.')
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
  }

  Future<Null> _showDialogDemo() {
    return showDialog(
        context: context,
        barrierDismissible: false,
        child: Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('show Button'),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Dialog demo'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: _showDialogDemo,
            child: Text('Show Simple Dialog'),
          ),
        ),
      ),
    );
  }
}
