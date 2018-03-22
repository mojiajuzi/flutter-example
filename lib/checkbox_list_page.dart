import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class MyCheckboxList extends StatefulWidget {
  @override
  _MyCheckboxListState createState() => new _MyCheckboxListState();
}

class _MyCheckboxListState extends State<MyCheckboxList> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('checkbox list demo'),
      ),
      body: new Column(
        children: <Widget>[
          new CheckboxListTile(
            title: Text('Animate Slowly'),
            value: timeDilation != 1.0,
            activeColor: Colors.orange,
            onChanged: (bool value) {
              setState(() {
                timeDilation = value ? 20.0 : 1.0;
              });
            },
            secondary: const Icon(Icons.hourglass_empty),
          ),
          new CheckboxListTile(
            title: Text('Animate Slowly'),
            subtitle: Text('Subtitle'),
            isThreeLine: true,
            dense: true,
            value: timeDilation != 1.0,
            activeColor: Colors.blue,
            onChanged: (bool value) {
              setState(() {
                timeDilation = value ? 20.0 : 1.0;
              });
            },
            secondary: const Icon(Icons.hourglass_empty),
          ),
        ],
      ),
    );
  }
}
