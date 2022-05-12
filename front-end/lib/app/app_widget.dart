import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  final Color primaryColor = Color.fromARGB(255, 180, 40, 30);
  final Color primaryColorDark = Color.fromARGB(255, 90, 14, 8);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        primaryColorDark: primaryColorDark,
        textSelectionTheme: TextSelectionThemeData(
          selectionHandleColor: primaryColor,
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(primaryColor),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: primaryColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(primaryColor),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            textStyle:
                MaterialStateProperty.all(TextStyle(color: primaryColor)),
            foregroundColor: MaterialStateProperty.all(primaryColor),
            side: MaterialStateProperty.all(
              BorderSide(
                color: primaryColor,
              ),
            ),
          ),
        ),
      ),
      initialRoute: '/',
      title: 'F-Tasks',
    ).modular();
  }
}
