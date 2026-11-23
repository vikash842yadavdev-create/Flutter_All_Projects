import 'package:datecetera_app/Details_Enter_Screens/name_screen.dart';
import 'package:datecetera_app/LoginScreens/Password_Reset/forgot_pass.dart';
import 'package:datecetera_app/config/app_string.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFF466A), Color(0xFF401C80)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50.0,
            bottom: 50.0,
            left: 30.0,
            right: 30.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/AppStartingScreensImages/logo.png',
                height: 200,
                width: 250,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20), // Add some spacing
                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 8.0,
                      ),
                      hintText: AuthString.email,
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                    style: TextStyle(color: Colors.white, height: 1.0),
                  ),
                  SizedBox(height: 20), // Add some spacing

                  TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15.0,
                        vertical: 8.0,
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: Colors.white,
                      ),
                      suffixIconConstraints: BoxConstraints(
                        minWidth: 24, // custom size
                        minHeight: 24, // custom size
                      ),
                    ),
                    style: TextStyle(color: Colors.white, height: 1.0),
                    obscureText: true,
                    obscuringCharacter: '*',
                  ),
                  SizedBox(height: 15), // Add some spacing
                  Padding(
                    padding: const EdgeInsets.only(left: 208.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPassword(),
                          ),
                        );
                      },
                      child: Text(
                        'forgot password',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => NameScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF466A),
                  foregroundColor: Color(0xFFFFFFFF),
                  minimumSize: Size(double.infinity, 50), // full width
                ),
                child: Text(
                  'Log In',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'OR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.white, // <-- Button color
                        foregroundColor: Colors.black, // <-- Splash color
                      ),
                      child: Image.asset(
                        'assets/images/LoginScreenImages/Phone.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.white, // <-- Button color
                        foregroundColor: Colors.black, // <-- Splash color
                      ),
                      child: Image.asset(
                        'assets/images/LoginScreenImages/Gmail.png',
                        height: 20,
                        width: 20,
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.white, // <-- Button color
                        foregroundColor: Colors.black, // <-- Splash color
                      ),
                      child: Image.asset(
                        'assets/images/LoginScreenImages/Fb.png',
                        height: 20,
                        width: 20,
                      ),
                    ),

                    ElevatedButton(
                      onPressed: () {},

                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.white, // <-- Button color
                        foregroundColor: Colors.black, // <-- Splash color
                      ),
                      child: Image.asset(
                        'assets/images/LoginScreenImages/Google.png',
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
