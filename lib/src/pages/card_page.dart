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
          SizedBox(
            height: 20,
          ),
          _cardType2(),
        ],
      ),
    );
  }

  Widget _cardType1() {
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

  Widget _cardType2() {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage(
              'Assets/images/jar-loading.gif',
            ),
            image: NetworkImage(
              'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg',
            ),
            fadeInDuration: Duration(
              milliseconds: 200,
            ),
            height: 300,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}
