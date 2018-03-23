import 'package:flutter/material.dart';

class MyLongList extends StatelessWidget {
  final List<String> items = new List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long title'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("${items[index]}"),
          );
        },
      ),
    );
  }
}
