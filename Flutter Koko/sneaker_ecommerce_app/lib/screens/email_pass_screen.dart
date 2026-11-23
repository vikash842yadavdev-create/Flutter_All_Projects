import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sneaker_ecommerce_app/screens/auth_service.dart';

class EmailPassScreen extends StatefulWidget {
  const EmailPassScreen({super.key});

  @override
  State<EmailPassScreen> createState() => _EmailPassScreenState();
}

class _EmailPassScreenState extends State<EmailPassScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  final _authService = AuthService();

  Future<void> loginUser() async {
    User? user;
    try {
      if (emailController.text.isNotEmpty && passController.text.isNotEmpty) {
        user = await _authService.login(
          email: emailController.text,
          password: passController.text,
        );
      }

      if (user != null) {
        print('Login successful: ${user.email}');
        Navigator.pushNamed(context, '/home');
      }
    } catch (error) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(error.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'email'),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passController,
                decoration: InputDecoration(hintText: 'password'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  loginUser();
                },
                child: Text('login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
