import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_eight/view_all_user_screen.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({super.key});

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  final DatabaseReference _ref = FirebaseDatabase.instanceFor(
    app: Firebase.app(),

    databaseURL: "https://bootcamp-7fd72-default-rtdb.firebaseio.com/",
  ).ref('users');

  void createUser() async {
    if (formKey.currentState!.validate()) {
      String id = DateTime.now().millisecondsSinceEpoch.toString();
      await _ref.child(id).set({
        'id': id,
        'name': nameController.text.trim(),
        'email': emailController.text.trim(),
        'age': ageController.text.trim(),
      });
      // ✅ Clear fields after submission
    nameController.clear();
    emailController.clear();
    ageController.clear();

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("USer Created Successfully")));

      setState(() {
        
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create User Screen",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                        hintText: "Enter a name",
                        border: OutlineInputBorder(),
                      ),
                      validator: (v) => v!.isEmpty ? "Enter Name" : null,
                    ),
        
                    SizedBox(height: 10),
        
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        hintText: "Enter an Email",
                        border: OutlineInputBorder(),
                      ),
                      validator: (v) => v!.isEmpty ? "Enter Email" : null,
                    ),
        
                    SizedBox(height: 10),
        
                    TextFormField(
                      controller: ageController,
                      decoration: InputDecoration(
                        hintText: "Enter an Age",
                        border: OutlineInputBorder(),
                      ),
                      validator: (v) => v!.isEmpty ? "Enter Age" : null,
                    ),
                  ],
                ),
              ),
            ),
        
            SizedBox(height: 20),
        
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.teal),
                ),
                onPressed: () {
                  createUser();
                },
                child: Text("Submit", style: TextStyle(color: Colors.white)),
              ),
            ),
        
            SizedBox(height: 20,),
            Text("OR",),
          SizedBox(height: 20,),
             SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.teal),
                ),
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewAllUserScreen()));
                },
                child: Text("View All Users", style: TextStyle(color: Colors.white)),
              ),
             )
          ],
        ),
      ),
    );
  }
}
