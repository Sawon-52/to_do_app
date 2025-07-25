import 'package:flutter/material.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text('Get Started', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 24),),
                  Row(

                    children: [
                      Text('Create task', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black12, fontSize: 15),),
                      Text('Set reminder', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black12, fontSize: 15),),
                      Text('Track progress', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black12, fontSize: 15),),
                    ],

                  )

                ],
              )
            ],
          ),
        ),
    );
  }
}
