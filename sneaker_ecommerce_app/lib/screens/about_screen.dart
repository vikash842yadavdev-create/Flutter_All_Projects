import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About App"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF7F7FD5), Color(0xFF86A8E7), Color(0xFF91EAE4)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(16),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.deepPurple,
                    child: Icon(
                      Icons.check_circle_outline,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  SizedBox(height: 15),

                  Text(
                    "Todo App",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),

                  Text(
                    "Version 1.0.0",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 20),

                  Text(
                    "This app helps you manage your daily tasks easily and efficiently.\n"
                    "Add, update, and delete tasks to stay organized and productive.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, height: 1.6),
                  ),
                  SizedBox(height: 25),

                  Divider(),
                  SizedBox(height: 10),

                  Text(
                    "Developed by",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 5),

                  Text(
                    "Vikash Yadav",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
