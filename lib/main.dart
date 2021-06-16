import 'package:flutter/material.dart';
import 'package:flutter_components_udemy/src/pages/default_page.dart';
import 'package:flutter_components_udemy/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_components_udemy/config/l10n/generated/l10n.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.green,
      title: 'Component App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) => MaterialPageRoute(
        builder: (context) => DefaultPage(),
      ),
      localizationsDelegates: const [
        L10n.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.delegate.supportedLocales,
      locale: Locale('es', 'ES'),
    );
  }
}
