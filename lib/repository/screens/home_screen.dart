import 'package:flutter/material.dart';
import 'package:to_do_app/repository/screens/nutritions_screen.dart';
import 'dart:async';

import 'package:to_do_app/repository/screens/signup_screen.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({super.key, required this.title});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => NutritionsScreen ()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' ${widget.title} ',
              style: TextStyle(color: Colors.orange,fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'Now',
              style: TextStyle(color: Colors.black,fontSize: 24, fontWeight: FontWeight.normal),
            ),
          ],
        )
      ),
    );
  }
}


