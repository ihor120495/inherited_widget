import 'package:flutter/material.dart';
import 'theme_provider.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();


}

class _HomeScreenState extends State<HomeScreen> {
  bool isDarkTheme = false;

  void _toggleTheme() {
    setState(() {
      isDarkTheme = !isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeData = isDarkTheme ? ThemeData.dark() : ThemeData.light();
    return ThemeNotifier(
        themeData: themeData,
        toggleTheme: _toggleTheme,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Home Screen'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Current Theme ${isDarkTheme ? 'Dark' : 'Light'}',

                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(onPressed: () {
                  _toggleTheme();
                },
                  child: Text('Toggle Theme'),
                ),
                SizedBox(
                  height: 20,

                )

              ],
            ),

          ),


        )


    );
  }


}
