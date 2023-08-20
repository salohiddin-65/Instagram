import 'package:flutter/material.dart';
import 'package:instagram_app/view/pages.dart';
import 'package:instagram_app/core/theme/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
