import 'package:astrology_application/providers/api_provider.dart';
import 'package:astrology_application/providers/theme_provider.dart';
import 'package:astrology_application/utils/appRoutes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'utils/routes.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      Provider(create: (context) => ThemeProvider()),
    ],
    child: MaterialApp(
      darkTheme: ThemeData(
        primaryColor: Colors.black,
      ),
      theme: ThemeData(primaryColor: Colors.pink),
      themeMode: ThemeMode.dark,
      title: 'ASTROLOGY APP',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes().spalshPage,
      routes: routes,
    ),
  ));
}
