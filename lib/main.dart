import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/page/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Component App',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}
