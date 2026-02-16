import 'package:flutter/material.dart';

void main() {
  
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
       home:
           Scaffold(
             //appbar
             //drawer
             //bottom navigation bar
             //body
             appBar: AppBar(
               centerTitle: true,
               title: Text("My First App"
               ,
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 28,
                   fontWeight: FontWeight.w500

                 ),
               ),
               backgroundColor: Colors.amber,
             ),
             backgroundColor: Colors.teal,
             body:Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Text("My first App",
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: 28,
                       fontWeight: FontWeight.w500

                   ),),
                 SizedBox(

                   width: 30,
                 ),
                 Text("My first App",
                   style: TextStyle(
                       color: Colors.white,
                       fontSize: 28,
                       fontWeight: FontWeight.w500

                   ),),

               ],
             )

               // Column(
               //   mainAxisAlignment: MainAxisAlignment.center,
               //   crossAxisAlignment: CrossAxisAlignment.start,
               //   children: [
               //     Text("My first App"),
               //     Text("My first App"),
               //     Text("My first App"),
               //   ],
               // )

           ),





     );
   }
 }
 
 //positional parameter
//named parameter =
//cloumn
//row
