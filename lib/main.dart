import 'package:flutter/material.dart';

void main() => runApp(new TabBarDemo());

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
            appBar: new AppBar(
              title: new Text('Tabs Demo'),
              bottom: new TabBar(
                tabs: <Widget>[
                  new Tab(
                    icon: new Icon(Icons.directions_car),
                  ),
                  new Tab(
                    icon: new Icon(Icons.directions_transit),
                  ),
                  new Tab(
                    icon: new Icon(Icons.directions_bike),
                  ),
                ],
              ),
            ),
            body: new TabBarView(
              children: <Widget>[
                new Icon(Icons.directions_car),
                new Icon(Icons.directions_transit),
                new Icon(Icons.directions_bike)
              ],
            )),
      ),
    );
  }
}
