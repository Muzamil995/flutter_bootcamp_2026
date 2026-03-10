import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class ViewAllUserScreen extends StatefulWidget {
  const ViewAllUserScreen({super.key});

  @override
  State<ViewAllUserScreen> createState() => _ViewAllUserScreenState();
}

class _ViewAllUserScreenState extends State<ViewAllUserScreen> {
  final DatabaseReference _ref = FirebaseDatabase.instanceFor(
    app: Firebase.app(),

    databaseURL: "https://bootcamp-7fd72-default-rtdb.firebaseio.com/",
  ).ref('users');

  //update
  void updateUser(String id, String name, String email, String age) {
    TextEditingController nameController = TextEditingController(text: name);
    TextEditingController emailController = TextEditingController(text: email);
    TextEditingController ageController = TextEditingController(text: age);

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Edit User"),
        content: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            TextFormField(
              controller: ageController,
              decoration: InputDecoration(labelText: "Age"),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () async {
              await _ref.child(id).update({
                'name': nameController.text.trim(),
                'email': emailController.text.trim(),
                'age': ageController.text.trim(),
              });
              Navigator.pop(context);
            },
            child: Text("Update"),
          ),
        ],
      ),
    );
  }

  //Delete
  void deleteUser(String id) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Delete USER"),
        content: Text("Are you sure ?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),

          TextButton(
            onPressed: () async {
              await _ref.child(id).remove();
              Navigator.pop(context);
            },
            child: Text("Delete"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "View All User Screen",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: StreamBuilder<DatabaseEvent>( 
        // continous listening db 
        stream: _ref.onValue,


        builder: (context, snapshot) { // snapshot jis ma na sara data 

          if (!snapshot.hasData || snapshot.data!.snapshot.value == null) {

            return Center(child: Text("No Users "));
          }

          final Map data = snapshot.data!.snapshot.value as Map; // key : value pairs 


          final users = data.values.toList(); // converted to list  [0,1,2,3,4,]

          return ListView.builder(

            itemCount: users.length, //one index aayee  



            itemBuilder: (context, index) // index ka data 
            
             {
              final user = Map<String, dynamic>.from(users[index]);



              final String id = user['id']; // user[0]=
              return Card(
                margin: EdgeInsets.all(8),
                child: ListTile(
                  title: Text(user['name']),
                 subtitle: Text("${user['email']} \n Age ${user['age']}"),
                  isThreeLine: true,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          updateUser(
                            id,
                            user['name'],
                            user['email'],
                            user['age'],
                          );
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {
                          deleteUser(id);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
