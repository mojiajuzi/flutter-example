import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => new _MySliderState();
}

class _MySliderState extends State<MySlider> {
  num initValue = 0.4;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Slider demo'),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            Slider(
              onChanged: (value) {
                setState(() {
                  initValue = value;
                });
              },
              min: 0.0,
              max: 1.0,
              value: initValue,
              label: 'Volide',
            ),
            Slider(
              onChanged: (value) {
                setState(() {
                  initValue = value;
                });
              },
              min: 0.0,
              max: 1.0,
              value: initValue,
              activeColor: Colors.orange,
              label: 'Volide',
            )
          ],
        ),
      ),
    );
  }
}
