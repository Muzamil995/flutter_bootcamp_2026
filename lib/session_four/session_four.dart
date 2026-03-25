import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SessionFour extends StatefulWidget {
  const SessionFour({super.key});

  @override
  State<SessionFour> createState() => _SessionFourState();
}

class _SessionFourState extends State<SessionFour> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Session four"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        actions: [Icon(Icons.search), SizedBox(width: 10), Icon(Icons.menu)],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Spiderman")),
            ListTile(
              tileColor: Colors.lime,
              title: Text("Home"),
              leading: Icon(Icons.home),
              trailing: Text("Click"),
            ),
            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
              trailing: Text("Click"),
            ),
            ListTile(
              title: Text("profile"),
              leading: Icon(Icons.person),
              trailing: Text("Click"),
            ),

            Text("Title "),
            Text("Title "),

            Text("Title "),
            Text("Title "),
            Text("Title "),
          ],
        ),
      ),

      body: Column(
        children: [
          Stack(
            children: [
              Container(color: Colors.red, width: 200, height: 200),
              SizedBox(width: 10, height: 5),
              Container(color: Colors.green, width: 150, height: 150),
              SizedBox(width: 10, height: 5),
              Positioned(
                top: 50,
                left: 40,
                child: Container(color: Colors.blue, width: 120, height: 120),
              ),
              SizedBox(width: 10, height: 5),
              Container(color: Colors.yellow, width: 100, height: 100),
              SizedBox(width: 10, height: 5),
              Positioned(
                top: 10,
                left: 40,

                child: Container(color: Colors.pink, width: 20, height: 20),
              ),

              Positioned(
                top: 110,
                left: 110,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.deepOrangeAccent,
                  backgroundImage: NetworkImage(
                    "https://media.istockphoto.com/id/476683764/photo/water-splash.jpg?s=2048x2048&w=is&k=20&c=NVEy_tCAue-fwozIvVaZm5EnPrwieiz9UmOawcWkgF8=",
                  ),
                ),
              ),
              Icon(Icons.edit),
            ],
          ),
           SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back"),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.deepOrangeAccent,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
          print(currentIndex);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
      // ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Container(color: Colors.red, width: 200, height: 200),
      //     SizedBox(width: 10, height: 5),
      //     Container(color: Colors.green, width: 200, height: 200),
      //     SizedBox(width: 10, height: 5),
      //     Container(color: Colors.blue, width: 200, height: 200),
      //     SizedBox(width: 10, height: 5),
      //     Container(color: Colors.yellow, width: 200, height: 200),
      //     SizedBox(width: 10, height: 5),
      //     Container(color: Colors.pink, width: 200, height: 200),
      //   ],
      // ),
    );
  }
}
