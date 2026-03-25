import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_four/session_four.dart';
import 'package:flutter_bootcamp_two/session_seven/login_screen.dart';
import 'package:flutter_bootcamp_two/session_thirteen/counter_screen.dart';
import 'package:get/get.dart'; // ✅ Only this import is needed

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx SnackBar Demo")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Hello!", "This is a simple Getx snackbar");
              },
              child: Text("show getx snackbar"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Success",
                  "Your data saved successfully",
                  snackStyle: SnackStyle.FLOATING,
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                  icon: const Icon(Icons.check_circle, color: Colors.white),
                  duration: const Duration(seconds: 5),
                );
              },
              child: Text("show success snackbar"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  "Failure",
                  "You have connectivity issue",
                  snackStyle: SnackStyle.FLOATING,
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
                  snackPosition: SnackPosition.BOTTOM,
                  icon: const Icon(Icons.error, color: Colors.white),
                  duration: const Duration(seconds: 5),
                );
              },
              child: Text("show error snackbar"),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Get.to(CounterScreen());
              },
              child: Text("Navigate to Counter App"),
            ),
          ],
        ),
      ),
    );
  }
}
