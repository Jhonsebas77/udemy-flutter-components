import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Card Page',
        ),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        children: <Widget>[
          _cardType1(),
        ],
      ),
    );
  }

  _cardType1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.green,
            ),
            title: Text('I`m a title'),
            subtitle: Text('This is a Subtitle'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Accept'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Cancel'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
