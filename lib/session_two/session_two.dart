
import 'package:flutter/material.dart';

class SessionTwo extends StatelessWidget {
  const SessionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        title:Text(
          "Session Two"
        ),
        centerTitle: true,
        

       ),
       backgroundColor: Colors.tealAccent,

       body: 
       SingleChildScrollView(
         child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
              
              Container(
                 
                 width: 200,
                 height: 200,
                 
                 decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 3
                    )
                  ]
                 ),
                 child: Text(
                  "Container One"
                 ),
              ),
         
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  decoration: InputDecoration(
                
                    hintText: "Enter an Email",
                    prefixIcon: Icon(Icons.email,color: Colors.black,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
         
                  ),
                ),
              )
              ,
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: TextFormField(
                  decoration: InputDecoration(
                
                    hintText: "Enter a password",
                    prefixIcon: Icon(Icons.lock,color: Colors.black,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                    )
         
                  ),
                ),
              ),
         
              Icon(Icons.add_photo_alternate,size: 30,color: Colors.indigo,),
         
              IconButton(onPressed:  (){
                print("Icon button pressed");
              }, icon: Icon(Icons.add)),
         
         
              ElevatedButton(
                style: ButtonStyle(
         
                ),
                onPressed: ( ){},
               child: Text("Login")),
         
            Image.asset("assets_image/banner.png"),

         
                Image(image: NetworkImage("https://media.istockphoto.com/id/476683764/photo/water-splash.jpg?s=2048x2048&w=is&k=20&c=NVEy_tCAue-fwozIvVaZm5EnPrwieiz9UmOawcWkgF8="))
          
          ,
           
              Container(
                 
                 width: 200,
                 height: 200,
                 
                 decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 3
                    )
                  ]
                 ),
                 child: Text(
                  "Container One"
                 ),
              ),
               
              Container(
                 
                 width: 200,
                 height: 200,
                 
                 decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 3
                    )
                  ]
                 ),
                 child: Text(
                  "Container One"
                 ),
              ),
          
          ],
         ),
       ),
    );
  }
}