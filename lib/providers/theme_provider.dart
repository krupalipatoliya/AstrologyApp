import 'package:astrology_application/models/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeHendler theme;

  void changeTheme() {
    theme.isDark = !theme.isDark;
    notifyListeners();
  }
}
