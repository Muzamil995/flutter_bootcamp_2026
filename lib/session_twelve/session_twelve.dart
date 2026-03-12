import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_twelve/auth_services.dart';
import 'package:flutter_bootcamp_two/session_twelve/profile_screen.dart';

class SessionTwelve extends StatefulWidget {
  const SessionTwelve({super.key});

  @override
  State<SessionTwelve> createState() => _SessionTwelveState();
}

class _SessionTwelveState extends State<SessionTwelve> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final AuthServices authServices = AuthServices();
  bool isLoading = false;
  String errorMessage = "";

  Future<void> onLoginPress() async {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();
    if (username.isEmpty || password.isEmpty) {
      setState(() {
        errorMessage = "Username and password shouldnot be empty";
        return;
      });
    }

    setState(() {
      isLoading = true;
      errorMessage = " ";
    });

    try {
      final user = await authServices.login(username, password);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen(user: user)),
      );
    } catch (e) {
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Auth services")),
      body: Center(
        child: Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                SizedBox(height: 25),
                TextFormField(
                  controller: usernameController,
                  decoration: InputDecoration(hintText: "Enter username"),
                ),
                SizedBox(height: 5),

                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(hintText: "Enter password"),
                ),
                SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      onLoginPress();
                    },
                    child: Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
