import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_two/session_thirteen/counter_controller.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class CounterScreen extends StatelessWidget {
  CounterScreen({super.key});
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              counterController.reset();
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "You have clicked",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 12),
            Obx(()=>Text(
              '${counterController.count}',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),),
            
            SizedBox(height: 12),
            Obx(( )=>   Text(
              counterController.message.value,
              style: TextStyle(fontSize: 16, color: Colors.green),
            ),),
          
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    counterController.decrement();
                  },
                  heroTag: "dec",
                  backgroundColor: Colors.grey.shade400,
                  child: Icon(Icons.remove, color: Colors.black),
                ),
                SizedBox(width: 24),
                FloatingActionButton(
                  onPressed: () {
                    counterController.increment();
                  },
                  heroTag: "inc",
                  backgroundColor: Colors.deepPurple.shade400,
                  child: Icon(Icons.add, color: Colors.white),
                ),
                SizedBox(width: 24),
                FloatingActionButton(
                  onPressed: () {
                    counterController.reset();
                  },
                  heroTag: "res",
                  backgroundColor: Colors.red.shade400,
                  child: Icon(Icons.refresh, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
