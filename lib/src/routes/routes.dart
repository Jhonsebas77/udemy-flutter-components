import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/pages/home_page.dart';
import 'package:flutter_components_udemy/src/pages/alert_page/alert_page.dart';
import 'package:flutter_components_udemy/src/pages/avatar_page.dart';
import 'package:flutter_components_udemy/src/pages/card_page/card_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
      'alert': (BuildContext context) => AlertPage(),
      'avatar': (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CardPage(),
    };
