import 'package:flutter/material.dart';

class CardType2 extends StatelessWidget {
  const CardType2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.green[100],
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(
              2.0,
              10.0,
            ),
          )
        ],
      ),
      child: ClipRRect(
        child: _buildCard(),
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }

  Widget _buildCard() {
    return Container(
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
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text('A beautiful landscape'),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
