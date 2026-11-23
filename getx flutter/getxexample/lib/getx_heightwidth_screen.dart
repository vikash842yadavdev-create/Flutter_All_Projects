import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class GetxHeightwidthScreen extends StatefulWidget {
  const GetxHeightwidthScreen({super.key});

  @override
  State<GetxHeightwidthScreen> createState() => _GetxHeightwidthScreenState();
}

class _GetxHeightwidthScreenState extends State<GetxHeightwidthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Height and Width Screen")),
      body: Container(
        // height: MediaQuery.of(context).size.height * 0.5,
        // width: MediaQuery.of(context).size.width * 0.5,
        height:Get.height * 0.5,
        // width: Get.width * 0.5,
        color: Colors.blue,
        child: Center(child: Text('Center', style: TextStyle(color: Colors.white), textAlign: TextAlign.center)),
      ),
    );
  }
}
