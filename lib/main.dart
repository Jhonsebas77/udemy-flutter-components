import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/pages/default_page.dart';
import 'package:flutter_components_udemy/src/pages/home_page.dart';
import 'package:flutter_components_udemy/src/pages/alert_page.dart';
import 'package:flutter_components_udemy/src/pages/avatar_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Component App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage(),
      },
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (context) => DefaultPage(),
      ),
    );
  }
}
