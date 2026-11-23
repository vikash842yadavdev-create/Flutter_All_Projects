import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 12),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                  height: 1.4,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 6),
              Text(
                "Sign to continue booking",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  height: 1.4,
                  letterSpacing: 0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 32),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(width: 1.5, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Email',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(width: 1.5, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Password',
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 10, 109, 10),
                  border: Border.all(width: 1.5, color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      letterSpacing: 0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
