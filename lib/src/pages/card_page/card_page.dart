import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/pages/card_page/widgets/card_type_one.dart';
import 'package:flutter_components_udemy/src/pages/card_page/widgets/card_type_two.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

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
          CardType1(),
          SizedBox(
            height: 20,
          ),
          CardType2(),
        ],
      ),
    );
  }
}
