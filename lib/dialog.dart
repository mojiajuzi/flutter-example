import 'package:flutter/material.dart';
import 'dart:async';

class MyDialog extends StatefulWidget {
  @override
  _MyDialogState createState() => new _MyDialogState();
}

enum Department { treasury, state }

class _MyDialogState extends State<MyDialog> {
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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Dialog demo'),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            onPressed: _askedToLead,
            child: Text('Show Simple Dialog'),
          ),
        ),
      ),
    );
  }
}
