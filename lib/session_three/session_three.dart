import 'dart:math';

import 'package:flutter/material.dart';

class SessionThree extends StatefulWidget {
  const SessionThree({super.key});

  @override
  State<SessionThree> createState() => _SessionThreeState();
}

class _SessionThreeState extends State<SessionThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to Groceria!",
                style: TextStyle(color: Colors.blueGrey, fontSize: 18),
              ),
              SizedBox(height: 15),
              Text(
                "Create your account",
                style: TextStyle(
                  color: Color(0xFF1B4332), // Color(0xff hex code)
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),

              Text(
                "Email or phone number",
                style: TextStyle(
                  color: Color(0xFF1B4332), // Color(0xff hex code)
                  fontSize: 18,
                  //fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter an email or phone number",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Text(
                "Password",
                style: TextStyle(
                  color: Color(0xFF1B4332), // Color(0xff hex code)
                  fontSize: 18,
                  //fontWeight: FontWeight.w700,
                ),
              ),

              SizedBox(height: 10),

              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter a Password",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),

              SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1B4332),
                  ),
                  onPressed: () {},
                  child: Text("Login", style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(height: 6),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Terms & Privacy Policy",
                      style: TextStyle(color: Color(0xFF1B4332)),
                    ),
                  ],
                  text: "By continuing, you agree to our",
                ),
              ),

              SizedBox(height: 15),

              Row(
                children: [
                  Expanded(child: Divider()),
                  Text("or continue with"),
                  Expanded(child: Divider()),
                ],
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(color: Colors.grey, spreadRadius: sqrt1_2),
                    ],
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        // Image(
                        //   fit: BoxFit.fill,
                        //   image: NetworkImage(
                        //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvGTLrLLfLKVfFxGoyhoD1JlYF7bsW99uZ4Q&s",
                        //   ),
                        // ),
                        SizedBox(width: 46),
                        Icon(Icons.mobile_off_sharp),
                        SizedBox(width: 5),
                        Text("Signup with google"),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 55),
                  side: BorderSide(color: Colors.black),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(width: 46),
                      Icon(Icons.apple),
                      SizedBox(width: 5),
                      Text("Sign up with apple"),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(width: 46),
                  Text("Already have an account  "),
                  Text("Login!"),
                ],
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
