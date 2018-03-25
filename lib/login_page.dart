import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = new Hero(
      tag: 'hero',
      child: new CircleAvatar(
        backgroundColor: Colors.lightBlue,
        radius: 48.0,
      ),
    );

    final email = new TextFormField(
      autofocus: false,
      keyboardType: TextInputType.emailAddress,
      initialValue: 'gru.mo@vodehr.com',
      decoration: new InputDecoration(
          hintText: 'Email',
          contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              new OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final password = new TextFormField(
      autofocus: false,
      obscureText: true,
      initialValue: 'some password',
      decoration: new InputDecoration(
          hintText: 'password',
          contentPadding: new EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              new OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final loginButton = new Padding(
      padding: new EdgeInsets.symmetric(vertical: 16.0),
      child: new Material(
        borderRadius: new BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: new MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.lightBlueAccent,
          child: new Text(
            'Login In',
            style: new TextStyle(color: Colors.white),
          ),
        ),
      ),
    );

    final forgetLabel = new FlatButton(
      child: new Text(
        'Forgot password?',
        style: new TextStyle(color: Colors.black54),
      ),
    );

    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new ListView(
          shrinkWrap: true,
          padding: new EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            new SizedBox(
              height: 48.0,
            ),
            email,
            new SizedBox(
              height: 8.0,
            ),
            password,
            new SizedBox(
              height: 24.0,
            ),
            loginButton,
            forgetLabel
          ],
        ),
      ),
    );
  }
}
