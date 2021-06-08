import 'package:flutter/material.dart';

class CircleAvatarName extends StatelessWidget {
  final String name;
  const CircleAvatarName({
    Key key,
    this.name,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 10,
      ),
      child: CircleAvatar(
        child: Text(
          name,
        ),
        backgroundColor: Colors.green[900],
        foregroundColor: Colors.white,
      ),
    );
  }
}
