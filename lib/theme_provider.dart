import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  final ThemeData themeData;
  final Function toggleTheme;

  const ThemeProvider({
    super.key,
    required this.themeData,
    required this.toggleTheme,
    required super.child,

  });

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return themeData != oldWidget.themeData;
  }

  static ThemeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
  }


}
