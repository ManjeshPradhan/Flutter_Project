import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_for_bootcamp/signinscreen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(
      seconds: 3,
    ), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SignInScreen();
      },));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 150,
              height: 150,
              child: Image.asset('assets/images/FlyEasy_Logo.png'),
            ),
          ),
          Text("FlyEasy", style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.w600,
          color: Color(0xFF0D80B4),),
          ),
  ]
      ),
    );
  }
}
