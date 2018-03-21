import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() => runApp(new Demo());

class Demo extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: LoginPage(),
      routes: routes,
    );
  }
}
