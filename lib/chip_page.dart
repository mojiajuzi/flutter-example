import 'package:flutter/material.dart';

void main()=>runApp(new MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key key}):super(key:key);

  static const String routeName = '/material/snacl-bar';
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool _showBananas = true;

  void _deleteBananas(){
    setState((){
      _showBananas = false;
    });
  }

  @override
  Widget build(BuildContext context){

    final List<Widget> chips = <Widget>[
    const Chip(label: const Text('Apple'),),
    const Chip(
      avatar: const CircleAvatar(child: const Text('B')),
      label: const Text('Blueberry'),
      )
    ];

    if(_showBananas){
      chips.add(new Chip(
        label: const Text('Bananas'),
        onDeleted: _deleteBananas,
      ));
    }

    return new MaterialApp(
      title: 'Heloo',
      home: new Scaffold(
      appBar: new AppBar(title: new Text('Snack Bar'),),
      body: new ListView(
        children: chips.map((Widget chip){
          return new Container(
            height: 100.0,
            child: new Center(child: chip,),
          );
        }).toList()
      ),
      ),
    );
  }

}