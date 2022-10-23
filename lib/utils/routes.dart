import 'package:astrology_application/views/detailsPage/page/detailsPGE.dart';
import 'package:astrology_application/views/homeScreen/pages/homepage.dart';
import 'package:astrology_application/views/splashScreen.dart';
import 'package:flutter/cupertino.dart';

import 'appRoutes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes().homePage: (context) => const HomePage(),
  AppRoutes().spalshPage: (context) => const SplashScreen(),
  AppRoutes().detailsPage: (context) => const DetailsPage(),
};
