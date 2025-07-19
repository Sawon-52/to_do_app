import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({super.key, required this.title});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
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


