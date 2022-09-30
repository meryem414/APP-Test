import 'package:flutter/material.dart';

import 'package:device_preview/device_preview.dart';
import 'package:flutter_application_2/screens/Categories_Avito.dart';
import 'package:flutter_application_2/screens/filterCategorie.dart';
import 'screens/DetailItemAvito.dart';
import './screens/ItemCategorie.dart';
import './screens/TabBottomScreen.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // builder: (context, childWidget) {
      //   childWidget = DevicePreview.appBuilder(context, childWidget);

      //   return childWidget;
      // },
      // localizationsDelegates: [
      //   // delegate from flutter_localization
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   const Locale('ar', 'AE'),
      // ],
      // locale: const Locale("ar", "AE"),
      initialRoute: '/',

      routes: {
        '/': (context) => TabBottomScreen(),
        '/navigatorItem': (context) => ItemCategorie(),
        '/RouteDetails': (context) => DetailItemAnimal(),
        '/filterScreen': (context) => FilterCategorie(),
      },
    );
  }
}
