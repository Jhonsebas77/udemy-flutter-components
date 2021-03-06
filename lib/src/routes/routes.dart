import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/pages/home_page.dart';
import 'package:flutter_components_udemy/src/pages/alert_page/alert_page.dart';
import 'package:flutter_components_udemy/src/pages/avatar_page/avatar_page.dart';
import 'package:flutter_components_udemy/src/pages/card_page/card_page.dart';
import 'package:flutter_components_udemy/src/pages/animated_container.dart';
import 'package:flutter_components_udemy/src/pages/inputs_page/inputs_page.dart';
import 'package:flutter_components_udemy/src/pages/listView_page/listView_page.dart';
import 'package:flutter_components_udemy/src/pages/slider_page/slider_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() => <String, WidgetBuilder>{
      '/': (BuildContext context) => HomePage(),
      'alert': (BuildContext context) => AlertPage(),
      AvatarPage.pageName: (BuildContext context) => AvatarPage(),
      'card': (BuildContext context) => CardPage(),
      'animated': (BuildContext context) => AnimatedContainerPage(),
      'inputs': (BuildContext context) => InputsPage(),
      'sliders': (BuildContext context) => SliderPage(),
      'listview': (BuildContext context) => ListViewPage(),
    };
