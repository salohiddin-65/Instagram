import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;
}

class MyTheme {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
    iconTheme: const IconThemeData(color: Colors.black),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      backgroundColor: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    tabBarTheme: const TabBarTheme(
     labelColor: Colors.black
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade200,
    ),

  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
    ),
    tabBarTheme: const TabBarTheme(
      labelColor: Colors.white
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade800,
    ),
  );
}