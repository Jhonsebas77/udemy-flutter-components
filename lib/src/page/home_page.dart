import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componetes'),
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    menuProvider.loadData();
    return ListView(
      children: _buildListItem(),
    );
  }

  List<Widget> _buildListItem() {
    return [
      ListTile(
        title: Text('Hola'),
      ),
    ];
  }
}
