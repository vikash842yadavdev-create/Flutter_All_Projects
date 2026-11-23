import 'package:get/state_manager.dart';

class MainScreenController extends GetxController {
  int currentIndex = 0;

  void changeIndex(int index) {
    currentIndex = index;

    update();
  }
}
