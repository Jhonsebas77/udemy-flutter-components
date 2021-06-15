import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> _numberList = [
    0,
    1,
    2,
    3,
    4,
    5,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'List View Builder',
        ),
        backgroundColor: Colors.green,
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.builder(
      itemCount: _numberList.length,
      itemBuilder: (BuildContext context, int index) {
        final _image = _numberList[index];
        return FadeInImage(
          placeholder: AssetImage(
            'Assets/images/jar-loading.gif',
          ),
          image: NetworkImage(
            'https://picsum.photos/500/300/?image=$_image',
          ),
          fadeInDuration: Duration(
            milliseconds: 200,
          ),
          fit: BoxFit.contain,
        );
      },
    );
  }
}
