import 'package:flutter/material.dart';
import 'theme_provider.dart';

class ThemedWidget extends StatelessWidget{
  const ThemedWidget({super.key});

  @override
  Widget build (BuildContext context) {
    final themeNotifier = ThemeNotifier.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      color: themeNotifier?.themeData.dialogBackgroundColor,
      child: Text(
        'Я є themed widget!',
        style: themeNotifier?.themeData.textTheme.headlineMedium,

      ),

    );



  }




}