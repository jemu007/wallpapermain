import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wallpaper",
      theme: ThemeData(primaryColor: Colors.white, accentColor: Colors.white),
      home: HomePage(),
    );
  }
}
