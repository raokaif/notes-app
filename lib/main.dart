import 'package:flutter/material.dart';
import 'package:notes_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        primaryColor: Colors.amber,
        iconTheme: IconThemeData(color: Colors.amber, size: 30),
        textTheme: TextTheme(
          titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          titleMedium: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          titleSmall: TextStyle(fontSize: 18, color: Colors.amber),
        ),
      ),
      home: HomePage(),
    );
  }
}
