import 'package:flutter/material.dart';

class MyRadioListTile extends StatefulWidget {
  @override
  _MyRadioListTileState createState() => new _MyRadioListTileState();
}

enum SingingCharacter { lafayette, jefferson }

class _MyRadioListTileState extends State<MyRadioListTile> {
  SingingCharacter _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Radio List Title'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new RadioListTile<SingingCharacter>(
              title: Text('Lafayette'),
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            new RadioListTile<SingingCharacter>(
              title: Text('Thomas Jefferson'),
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
