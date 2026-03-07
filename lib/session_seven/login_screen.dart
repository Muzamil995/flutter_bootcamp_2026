import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_seven/home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // controller initilaztion
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void LoginUser(BuildContext context) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (userCredential.user != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(e.message ?? "LoginFailed")));
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

      body: SingleChildScrollView(
        child: Column(
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
                 LoginUser(context);
              },
              child: Text("Login"),
            ),
        
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
