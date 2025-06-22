import 'package:flutter/material.dart';
import 'package:project_for_bootcamp/signinscreen.dart';
class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 3,57,108),
        title: Text("FlyEasy",
          style: TextStyle(color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Row(children: [
            Text(" Welcome User 123", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500, color: Color.fromARGB(255,0,91,150)),
            ),
          ],),
          SizedBox(height: 250,),
          Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your Current Balance",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500, color: Color.fromARGB(255,0,91,150)),),
            Text("Rs: $a",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500, color: Color.fromARGB(255,0,91,150)),),
          ],
          )
        ],
      ),
      floatingActionButton: Row(
        children: [
          SizedBox(width: 30,),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomLeft: Radius.circular(20))
            ),
            child: GestureDetector(
                onTap: (){
                  a=a+5;
                  setState(() {
                  });
                },
                child: Icon(Icons.add, color: Colors.black,size: 70,)),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 205),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SignInScreen();
              }
              )
              );
            }, child: Text("Logout")),
          ),
        ],
      ),
    );
  }
}
