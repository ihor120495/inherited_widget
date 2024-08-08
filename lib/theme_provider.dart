import 'package:flutter/material.dart';

class ThemeNotifier extends InheritedWidget{
  final ThemeData themeData;
  final Function toggleTheme;

  ThemeNotifier ({
    Key? key,
    required this.themeData,
    required this.toggleTheme,
    required Widget child,

}) : super (key : key, child : child);

  @override
  bool updateShouldNotify(ThemeNotifier oldWidget) {

    return themeData != oldWidget.themeData;
  }
  static ThemeNotifier? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeNotifier>();

  }






}