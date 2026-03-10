import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_ten/app_colors.dart';
import 'package:flutter_bootcamp_two/session_ten/app_routes.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        title: Text("Theme ", style: TextStyle(color: AppColors.white)),
      ),
      backgroundColor: AppColors.black,
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.createUser);
          },
          child: Text(
            "Login Screen ",
            style: TextStyle(color: AppColors.white),
          ),
        ),
      ),
    );
  }
}
