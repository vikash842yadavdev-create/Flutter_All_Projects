//Example of slider without using GetX, just to compare with the GetX version of the slider screen
// import 'package:flutter/material.dart';

// class GetxSliderScreen extends StatefulWidget {
//   const GetxSliderScreen({super.key});

//   @override
//   State<GetxSliderScreen> createState() => _GetxSliderScreenState();
// }

// class _GetxSliderScreenState extends State<GetxSliderScreen> {
//   double sliderValue = 0.0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Slider Screen")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               height: 100,
//               width: 100,
//               color: Colors.deepPurple.withOpacity(sliderValue)
//             ),
//             Text(sliderValue.toStringAsFixed(2), style: TextStyle(fontSize: 30)),
//             Slider(
//               value: sliderValue,
//               onChanged: (value) {
//                 setState(() {
//                   sliderValue = value;
//                 });
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

//Using GetX to update the UI when the slider value changes
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexample/counter_screen.dart';

class GetxSliderScreen extends StatefulWidget {
  const GetxSliderScreen({super.key});

  @override
  State<GetxSliderScreen> createState() => _GetxSliderScreenState();
}

class _GetxSliderScreenState extends State<GetxSliderScreen> {
  final SliderValueController sliderValueController = Get.put(SliderValueController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Slider Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple.withOpacity(sliderValueController.sliderValue.value)
            )),
            Obx(() => Text(sliderValueController.sliderValue.value.toStringAsFixed(2), style: TextStyle(fontSize: 30))),
            Obx(() => Slider(
              value: sliderValueController.sliderValue.value,
              onChanged: (value) {
                sliderValueController.updateSliderValue(value);
              },
            )),
              Obx(() => Switch(
                value: sliderValueController.switchValue.value,
                onChanged: (value) {
                  sliderValueController.updateSwitchValue(value);
                },
              )),
          ],
        ),
      ),
    );
  }
}
