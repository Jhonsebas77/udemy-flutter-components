import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/pages/avatar_page/widgets/avatar_circle_image.dart';
import 'package:flutter_components_udemy/src/pages/avatar_page/widgets/avatar_circle_letter.dart';

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
          CircleAvatarImage(
            url: 'https://image.flaticon.com/icons/png/512/188/188987.png',
          ),
          CircleAvatarName(
            name: 'SO',
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
