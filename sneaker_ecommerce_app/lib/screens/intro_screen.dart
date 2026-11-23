import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 50),
                child: Image.asset('assets/images/nike.png'),
              ),

              const SizedBox(height: 20),

              //welcome text
              Text(
                'Just Do It',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              //description text
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Brand new Sneakers and custom kicks made with premium quality.',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                ),
              ),

              const SizedBox(height: 80),

              //get started button
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),

                  child: Text(
                    'Shop Now',
                    style: TextStyle(
                      color: Colors.grey[200],
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
