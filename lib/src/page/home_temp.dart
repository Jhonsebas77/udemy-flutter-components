import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({Key key}) : super(key: key);

  final options = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componetes Temp'),
      ),
      body: ListView(
        children: _buildItemsLarge(),
      ),
    );
  }

  List<Widget> _buildItemsLarge() {
    List<Widget> list = new List<Widget>();
    for (String item in options) {
      final _tempWidget = ListTile(
        title: Text(
          item,
        ),
      );
      list
        ..add(_tempWidget)
        ..add(
          Divider(),
        );
    }
    return list;
  }
}
