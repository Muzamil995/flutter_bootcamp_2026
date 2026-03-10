

import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_ten/app_colors.dart';

class ThemeRoute extends StatefulWidget {
  const ThemeRoute({super.key});

  @override
  State<ThemeRoute> createState() => _ThemeRouteState();
}

class _ThemeRouteState extends State<ThemeRoute> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        title: Text("Theme ",style: TextStyle(color: AppColors.white),),
      ),
      backgroundColor: AppColors.black,
      body: Center(
        child: Text("Theme ",style: TextStyle(color: AppColors.white),),
      ),
    );
  }
}