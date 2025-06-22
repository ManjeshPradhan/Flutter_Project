import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_for_bootcamp/homepage.dart';
class Loadtohome extends StatefulWidget {
  const Loadtohome({super.key});

  @override
  State<Loadtohome> createState() => _LoadtohomeState();
}

class _LoadtohomeState extends State<Loadtohome> {
  @override

  void initState() {
    super.initState();
    Timer(Duration(
      seconds: 3,
    ), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return homepage();
      },));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Acces Granted",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 3,57,108), fontWeight: FontWeight.w600),),
              SizedBox(height: 15,),
              Text("Loading....",style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 3,57,108),fontWeight: FontWeight.w600),),
            ]
        ),
      ),
    );
  }
}
