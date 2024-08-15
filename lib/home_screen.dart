import 'package:flutter/material.dart';
import 'theme_provider.dart';
import 'themed_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = ThemeProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                themeNotifier?.toggleTheme();
              },
              child: const Text('Toggle Theme'),
            ),
            const SizedBox(
              height: 20,
            ),
            const ThemedWidget(),
          ],
        ),
      ),
    );
  }
}
