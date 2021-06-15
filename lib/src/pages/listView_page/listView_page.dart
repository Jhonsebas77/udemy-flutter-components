import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  ListViewPage({Key key}) : super(key: key);

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _numberList = new List();
  int _lastNumber = 0;

  @override
  void initState() {
    super.initState();
    _addMoreImages(10);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _addMoreImages(10);
      }
    });
  }

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
      controller: _scrollController,
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

  void _addMoreImages(int number) {
    for (var i = 0; i < number; i++) {
      _lastNumber++;
      _numberList.add(_lastNumber);
    }
    setState(() {});
  }
}
