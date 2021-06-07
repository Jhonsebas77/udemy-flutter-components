import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/pages/default_page.dart';
import 'package:flutter_components_udemy/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Component App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (context) => DefaultPage(),
      ),
    );
  }
}
