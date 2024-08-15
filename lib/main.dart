import 'package:flutter/material.dart';
import 'package:inherited_widget/theme_provider.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themeData: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      toggleTheme: _toggleTheme,
      child: Builder(builder: (context) {
        final theme = ThemeProvider.of(context);
        return MaterialApp(
          theme: theme?.themeData,
          home: HomeScreen(),
        );
      }),
    );
  }
}
