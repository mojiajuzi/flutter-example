import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Tab> tabs = List();

    tabs.add(Tab(
      text: 'Car',
      icon: Icon(Icons.directions_car),
    ));
    tabs.add(Tab(
      text: 'Bus',
      icon: Icon(Icons.directions_bus),
    ));
    tabs.add(Tab(
      text: 'Bike',
      icon: Icon(Icons.directions_bike),
    ));

    var appBar = new AppBar(
      title: Text('TabBar Demo'),
      bottom: new TabBar(
        tabs: tabs,
      ),
    );

    var body = new TabBarView(
      children: <Widget>[
        new Icon(Icons.directions_car),
        new Icon(Icons.directions_bus),
        new Icon(Icons.directions_bike)
      ],
    );

    var scaffold = Scaffold(
      appBar: appBar,
      body: body,
    );

    return new DefaultTabController(
      length: tabs.length,
      child: scaffold,
    );
  }
}
