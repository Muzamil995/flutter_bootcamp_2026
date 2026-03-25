import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var message = 'press + to startcounting !'.obs;
  var color = 'blue'.obs;

  void increment() {
    count++;
    print(count.value.toString());
  }

  void decrement() {
    if (count.value > 0) {
      count--;
    } else {
      Get.snackbar("Oops", "Count cannot go below 0!");
    }
  }

  void reset() {
    count.value = 0;
    message.value = 'Press + to start counting!';
    color.value = 'blue';
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("Counter Controller created");
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
