import 'package:flutter/material.dart';

///参考文章
///https://engineering.classpro.in/flutter-1-navigation-drawer-routes-8b43a201251e
///
const String _AccountName = 'Aravind Vemula';
const String _AccountEmail = 'vemula.aravind336@gmail.com';
const String _AccountAbbr = 'AV';

class MyDrawer extends StatelessWidget {
  //显示用户头部信息
  var userAccountHeader = new UserAccountsDrawerHeader(
    accountName: const Text(_AccountName),
    accountEmail: const Text(_AccountEmail),
    currentAccountPicture: new CircleAvatar(
      backgroundColor: Colors.lightBlueAccent,
      child: Text(_AccountAbbr),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      elevation: 14.0,
      child: new ListView(
        padding: const EdgeInsets.only(top: 0.0),
        children: <Widget>[
          userAccountHeader,
          new ListTile(
            leading: new Icon(Icons.lightbulb_outline),
            title: new Text('Notes'),
            onTap: () => _onListTileTap(context),
          ),
          new Divider(),
          new ListTile(
            leading: new Text('Label'),
            trailing: new Text('Edit'),
            onTap: () => _onListTileTap(context),
          ),
          new ListTile(
            leading: new Icon(Icons.label),
            title: new Text('Expense'),
            onTap: () => _onListTileTap(context),
          ),
          new ListTile(
            leading: new Icon(Icons.label),
            title: new Text('Inspiration'),
            onTap: () => _onListTileTap(context),
          ),
          new ListTile(
            leading: new Icon(Icons.label),
            title: new Text('Personal'),
            onTap: () => _onListTileTap(context),
          ),
          new ListTile(
            leading: new Icon(Icons.label),
            title: new Text('Work'),
            onTap: () => _onListTileTap(context),
          ),
          new ListTile(
            leading: new Icon(Icons.add),
            title: new Text('Create new label'),
            onTap: () => _onListTileTap(context),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.archive),
            title: new Text('Archive'),
            onTap: () => _onListTileTap(context),
          ),
          new ListTile(
            leading: new Icon(Icons.delete),
            title: new Text('Trash'),
            onTap: () => _onListTileTap(context),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.settings),
            title: new Text('Settings'),
            onTap: () => _onListTileTap(context),
          ),
          new ListTile(
            leading: new Icon(Icons.help),
            title: new Text('Help & feedback'),
            onTap: () => _onListTileTap(context),
          )
        ],
      ),
    );
  }
}

_onListTileTap(BuildContext context) {
  Navigator.of(context).pop();
  showDialog<Null>(
      context: context,
      child: new AlertDialog(
        title: const Text('Not Implemented'),
        actions: <Widget>[
          new FlatButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      ));
}
