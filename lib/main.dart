import 'package:flutter/material.dart';
import 'package:to_do_app/repository/screens/home_screen.dart';
import 'package:to_do_app/repository/screens/signup_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home:  HomeScreen(title:"ToDo"),
       home: HomeScreen(title: 'ToDo'),
    );
  }
}