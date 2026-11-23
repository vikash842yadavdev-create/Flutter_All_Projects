import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;

  void counterIncrement() {
    counter++;
  }
}

class SliderValueController extends GetxController {
  RxDouble sliderValue = 0.0.obs;
  RxBool switchValue = false.obs;

  void updateSliderValue(double value) {
    sliderValue.value = value;
  }

  void updateSwitchValue(bool value) {
    switchValue.value = value;
  }
}

class FavListController extends GetxController {
  RxList<String> favList = <String>["orange", "apple", "mango", "grapes"].obs;
  RxList<String> selectedFavList = <String>[].obs;

  void addToFavList(String item) {
    if (selectedFavList.contains(item)) {
      selectedFavList.remove(item);
    } else {
      selectedFavList.add(item);
    }
  }
}
