import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  final FirebaseFirestore firestore = FirebaseFirestore.instance;


  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn.instance.authenticate();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth = googleUser!.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(idToken: googleAuth.idToken);

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final emailcheck = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (emailcheck != null) {
        log('signin successfully');
      }
    } on FirebaseAuthException catch (e) {
      log(e.code);
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }


  Future<void> write () async{
    try{
      await firestore.collection('users').add({
        'userName':"khali"
      });
    }
    catch(e){
      log(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              TextField(
                controller: email,
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: pass,
                decoration: const InputDecoration(
                  hintText: 'Pass',
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // signIn(
                  //   email: email.text.trim(),
                  //   password: pass.text.trim(),
                  // );
                  // signInWithGoogle();
                  write();
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}