// USing setState to update the UI when the counter value changes
// import 'package:flutter/material.dart';

// class GetxCounterScreen extends StatefulWidget {
//   const GetxCounterScreen({super.key});

//   @override
//   State<GetxCounterScreen> createState() => _GetxCounterScreenState();
// }

// class _GetxCounterScreenState extends State<GetxCounterScreen> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Counter Screen")),
//       body: Center(
//         child: Text(counter.toString(), style: TextStyle(fontSize: 30)),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             counter++;
//           });
//         },
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

//Using GetX to update the UI when the counter value changes

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxexample/counter_screen.dart';

class GetxCounterScreen extends StatefulWidget {
  const GetxCounterScreen({super.key});

  @override
  State<GetxCounterScreen> createState() => _GetxCounterScreenState();
}

class _GetxCounterScreenState extends State<GetxCounterScreen> {
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Screen"),


      ),
      body: Center(
        child: Obx(()=> Text(counterController.counter.toString(), style: TextStyle(fontSize: 30))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterController.counterIncrement();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
