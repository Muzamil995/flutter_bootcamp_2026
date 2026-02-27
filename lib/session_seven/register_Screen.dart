import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_seven/home_screen.dart';
import 'package:flutter_bootcamp_two/session_seven/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  // controller initilaztion
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  /// dart ma _ add kar ga variable ka satha tu wo private ban jata ha
  void registerUser(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim(),
          );

      if (userCredential.user != null) {
        ///.user add karna ma boolgeya tha
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Successfully registered")));
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    } on FirebaseAuthException catch (me) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(me.message ?? "Error occured")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register Screen",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 30),
          Text(
            "Welcome to Bootcamp",
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextFormField(
              controller: emailController,
              decoration: InputDecoration(hintText: "Enter an Email"),
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: const EdgeInsets.all(14.0),
            child: TextFormField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(hintText: "Enter a Password"),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              registerUser(context);
            },
            child: Text("Register"),
          ),

          SizedBox(height: 20),
          Text("OR"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}
