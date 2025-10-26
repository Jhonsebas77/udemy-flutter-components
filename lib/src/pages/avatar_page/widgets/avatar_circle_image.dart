import 'package:flutter/material.dart';

class CircleAvatarImage extends StatelessWidget {
  final String url;
  const CircleAvatarImage({required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: CircleAvatar(
        backgroundImage: NetworkImage(url),
        backgroundColor: Colors.green[900],
      ),
    );
  }
}
