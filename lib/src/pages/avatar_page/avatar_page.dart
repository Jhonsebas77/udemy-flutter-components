import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Avatar Page',
        ),
        backgroundColor: Colors.green,
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://image.flaticon.com/icons/png/512/188/188987.png',
              ),
              backgroundColor: Colors.green[900],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 10,
            ),
            child: CircleAvatar(
              child: Text(
                'SO',
              ),
              backgroundColor: Colors.green[900],
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage(
            'Assets/images/jar-loading.gif',
          ),
          image: NetworkImage(
            'https://images3.alphacoders.com/100/thumb-1920-1009976.jpg',
          ),
          fadeInDuration: Duration(
            milliseconds: 200,
          ),
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
