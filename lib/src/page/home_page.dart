import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/providers/menu_provider.dart';
import 'package:flutter_components_udemy/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componetes'),
        backgroundColor: Colors.green,
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (
        BuildContext context,
        AsyncSnapshot<List<dynamic>> snapshot,
      ) {
        return ListView(
          children: _buildListItem(
            snapshot.data,
          ),
        );
      },
    );
  }

  List<Widget> _buildListItem(List<dynamic> data) {
    final List<Widget> options = [];
    data.forEach((element) {
      final _widgetTemp = ListTile(
        title: Text(
          element['texto'],
        ),
        leading: getIcon(
          element['icon'],
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right_outlined,
          color: Colors.green,
        ),
      );
      options
        ..add(
          _widgetTemp,
        )
        ..add(
          Divider(),
        );
    });
    return options;
  }
}
