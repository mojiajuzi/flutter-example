import 'package:flutter/material.dart';
import 'checkbox_list_page.dart';

void main() => runApp(new Demo());

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Kodeversitas',
        theme: ThemeData(primarySwatch: Colors.lightBlue),
        home: MyCheckboxList());
  }
}
