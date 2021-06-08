import 'package:flutter/material.dart';

class CardType1 extends StatelessWidget {
  const CardType1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
