import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_twelve/user_model.dart';

class ProfileScreen extends StatefulWidget {
  UserModel user;
    ProfileScreen({super.key,required this.user});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundImage: NetworkImage(widget.user.image),
            ),
            SizedBox(
              height: 12,
            ),
            Text(widget.user.username),
             Text(widget.user.email),
              Text(widget.user.firstName),
               Text(widget.user.lastName),
          ],
        ),
      ),
    );
  }
}
