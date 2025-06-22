import 'package:flutter/material.dart';
import 'package:project_for_bootcamp/loading.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final validator = GlobalKey<FormState>();

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text("Sign In",
                style: TextStyle(fontSize: 30),),
          ),
          SizedBox(height: 10,),

          Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Form(
                  key: validator,
                  child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Email";
                      }
                      return null;
                    },
                    decoration:InputDecoration(
                      hintText: "Email or Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    ),
                  ),

                  SizedBox(height: 10,),

                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Password";
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration:InputDecoration(
                      hintText: "Password",
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),

                  ),
                ],
              )
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){

                if (validator.currentState!.validate()) {
                  if (emailController.text == "test@gmail.com" &&
                      passwordController.text == "123456789") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 3),
                        content: Text("You are Authenticated"),
                      ),
                    );

                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return Loadtohome();
                    }
                    )
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Email or Password is incorrect"),
                      ),
                    );

                    print("Email is ${emailController.text}");
                    print("Password is ${passwordController.text}");
                  }
                }

              }
              , style: ElevatedButton.styleFrom(
                  minimumSize: Size(100,50)
                ),
                child: Text("Login"),
              )
            ],
          ),
          )

        ],
      ),
    );
  }
}
