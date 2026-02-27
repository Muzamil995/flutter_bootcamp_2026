import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_five/calculator_app.dart';
import 'package:flutter_bootcamp_two/session_four/session_four.dart';
import 'package:flutter_bootcamp_two/session_seven/register_Screen.dart';
import 'package:flutter_bootcamp_two/session_six/image_picker_screen.dart';
import 'package:flutter_bootcamp_two/session_six/session_six.dart';
import 'package:flutter_bootcamp_two/session_three/session_three.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  //imp
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyCode());
}

class MyCode extends StatelessWidget {
  const MyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme designing
      //navigation
      //parent widget
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),

      //  Scaffold(
      //    //appbar
      //    //drawer
      //    //bottom navigation bar
      //    //body
      //    appBar: AppBar(
      //      centerTitle: true,
      //      title: Text("My First App"
      //      ,
      //        style: TextStyle(
      //          color: Colors.white,
      //          fontSize: 28,
      //          fontWeight: FontWeight.w500

      //        ),
      //      ),
      //      backgroundColor: Colors.amber,
      //    ),
      //    backgroundColor: Colors.teal,
      //    body:Row(
      //      mainAxisAlignment: MainAxisAlignment.start,
      //      crossAxisAlignment: CrossAxisAlignment.center,
      //      children: [
      //        Text("My first App",
      //          style: TextStyle(
      //              color: Colors.white,
      //              fontSize: 28,
      //              fontWeight: FontWeight.w500

      //          ),),
      //        SizedBox(

      //          width: 30,
      //        ),
      //        Text("My first App",
      //          style: TextStyle(
      //              color: Colors.white,
      //              fontSize: 28,
      //              fontWeight: FontWeight.w500

      //          ),),

      //      ],
      //    )

      //      // Column(
      //      //   mainAxisAlignment: MainAxisAlignment.center,
      //      //   crossAxisAlignment: CrossAxisAlignment.start,
      //      //   children: [
      //      //     Text("My first App"),
      //      //     Text("My first App"),
      //      //     Text("My first App"),
      //      //   ],
      //      // )

      //  ),
    );
  }
}

//positional parameter
//named parameter =
//cloumn
//row
