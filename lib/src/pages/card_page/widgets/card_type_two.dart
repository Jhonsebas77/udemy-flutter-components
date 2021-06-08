import 'package:flutter/material.dart';

class CardType2 extends StatelessWidget {
  const CardType2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
