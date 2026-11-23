import 'package:get/state_manager.dart';

class HomeController extends GetxController{


  double addResult = 0;
  double subResult = 0;
  double mulResult = 0;
  double divResult = 0;
  int intDivResult = 0;
  double modResult = 0;

  void add(String firstValue, String secondValue){
    print('First Value: $firstValue');
    print('Second Value: $secondValue');
    addResult = double.parse(firstValue) + double.parse(secondValue);
    print(addResult);
  }
  void sub(String firstValue, String secondValue){
    subResult = double.parse(firstValue) - double.parse(secondValue);
    print(subResult);
  }
  void mul(String firstValue, String secondValue){
    mulResult = double.parse(firstValue) * double.parse(secondValue);
    print(mulResult);
  }
  void div(String firstValue, String secondValue){
    divResult = double.parse(firstValue) / double.parse(secondValue);
    print(divResult);
  }
  void intDiv(String firstValue, String secondValue){
    intDivResult = double.parse(firstValue) ~/ double.parse(secondValue);
    print(intDivResult);
  }
  void mod(String firstValue, String secondValue){
    modResult = double.parse(firstValue) % double.parse(secondValue);
    print(modResult);
  }

}
