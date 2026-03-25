import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_four/session_four.dart';
import 'package:flutter_bootcamp_two/session_seven/login_screen.dart';
import 'package:flutter_bootcamp_two/session_thirteen/counter_screen.dart';
import 'package:flutter_bootcamp_two/session_thirteen/session_thirteen.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetxRoutesClass());
}

class GetxRoutesClass extends StatelessWidget {
  const GetxRoutesClass({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Getx Routing Demo",
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:()=>SnackBarScreen()),
        GetPage(name: '/sessionFour', page: ()=>CounterScreen())
      ],
    );
  }
}
