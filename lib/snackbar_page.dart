import 'package:flutter/material.dart';

const String _text1 =   'Snackbars provide lightweight feedback about an operation by '
  'showing a brief message at the bottom of the screen. Snackbars '
  'can contain an action.';

const String _text2 = 
  'Snackbars should contain a single line of text directly related '
  'to the operation performed. They cannot contain icons.';

const String _text3 =
  'By default snackbars automatically disappear after a few seconds ';

void main()=>runApp(new MyApp());


class MyApp extends StatefulWidget {
  const MyApp({Key key}):super(key:key);

  static const String routeName = '/material/snacl-bar';
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _snackBarIndex = 1;



  Widget buildBody(BuildContext context) {
    return new SafeArea(
      top: false,
      bottom: false,
      child: new ListView(
        padding: const EdgeInsets.all(24.0),
        children: <Widget>[
          const Text(_text1),
          const Text(_text2),
          new Center(
            child: new RaisedButton(
              child: const Text('SHOW A SNACKBAR'),
              onPressed: (){
                final int thisSnackBarIndex = _snackBarIndex++;
                Scaffold.of(context).showSnackBar(new SnackBar(
                  content: new Text('This is snackbar #$thisSnackBarIndex'),
                  action: new SnackBarAction(
                    label: 'ACTION',
                    onPressed: (){
                      Scaffold.of(context).showSnackBar(
                        new SnackBar(
                          content: new Text('You pressed snackbar $thisSnackBarIndex\'s action'),
                        )
                      );
                    },
                  ),
                ));
              },
            ),
          ),
          const Text(_text3)
        ].map((Widget child){
          return new Container(
            margin: const EdgeInsets.symmetric(vertical: 12.0),
            child: child,
          );
        }).toList()
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      title: 'Heloo',
      home: new Scaffold(
      appBar: new AppBar(title: new Text('Snack Bar'),),
      body: new Builder(
        builder: Hello,
      ),
      ),
    );
  }

  Widget Hello(BuildContext context){
    return new Container(
      child: new RaisedButton(
        child: new Text('Hello'),
        onPressed: (){
          Scaffold.of(context).showSnackBar(new SnackBar(
            content: new Text('Hello')
          ));
        },
      ),
    );
  }
}