// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:tfirstproject/controller/home_controller.dart';
// import 'package:tfirstproject/widgets/dialougbox_widgit.dart';
// import 'package:tfirstproject/widgets/homeelevatedbutton.dart';
// import 'package:tfirstproject/widgets/textfield_widget.dart';

// class ArithmaticView extends StatelessWidget {
//   const ArithmaticView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController firstController = TextEditingController();
//     final TextEditingController secondController = TextEditingController();
//     final HomeController homeController = Get.put(HomeController());

//     return Scaffold(
//       appBar: AppBar(title: const Text('Arithmatic Screen')),
//       body: Center(
//         child: Column(
//           children: [
//             SizedBox(height: 20),
//             TextfieldWidget(controller: firstController),
//             SizedBox(height: 20),
//             TextfieldWidget(controller: secondController),
//             SizedBox(height: 20),

//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Arithmaticelevatedbutton(
//                     buttonText: '+',
//                     title: 'Addition',
//                     homeController: homeController,
//                     firstController: firstController,
//                     secondController: secondController,
//                     showResultDialog: showResultDialog,
//                     tasktoprform: homeController.add,
//                     resultshow: 'addResult',
//                   ),
//                   Arithmaticelevatedbutton(
//                     buttonText: '-',
//                     title: 'Subtraction',
//                     homeController: homeController,
//                     firstController: firstController,
//                     secondController: secondController,
//                     showResultDialog: showResultDialog,
//                     tasktoprform: homeController.sub,
//                     resultshow: 'subResult',
//                   ),
//                   Arithmaticelevatedbutton(
//                     buttonText: '%',
//                     title: 'Modulo',
//                     homeController: homeController,
//                     firstController: firstController,
//                     secondController: secondController,
//                     showResultDialog: showResultDialog,
//                     tasktoprform: homeController.mod,
//                     resultshow: 'modResult',
//                   ),
//                   Arithmaticelevatedbutton(
//                     buttonText: '*',
//                     title: 'Multiplication',
//                     homeController: homeController,
//                     firstController: firstController,
//                     secondController: secondController,
//                     showResultDialog: showResultDialog,
//                     tasktoprform: homeController.mul,
//                     resultshow: 'mulResult',
//                   ),
//                   Arithmaticelevatedbutton(
//                     buttonText: '/',
//                     title: 'Division',
//                     homeController: homeController,
//                     firstController: firstController,
//                     secondController: secondController,
//                     showResultDialog: showResultDialog,
//                     tasktoprform: homeController.div,
//                     resultshow: 'divResult',
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
