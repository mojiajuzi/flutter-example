import 'package:flutter/material.dart';
import 'drawer_page.dart';

void main() => runApp(new Demo());

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: new Scaffold(
        appBar: new AppBar(
          title: Text('Drawer'),
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
