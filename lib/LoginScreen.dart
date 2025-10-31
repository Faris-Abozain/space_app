import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "login_screen";

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              child: Image.asset("Assets/48e3ac1944450fcae09e68a9ccd37c17 1 (1).png"),
            ),
            Positioned(
              bottom: 50,
              left: 20,
              right: 20,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffEE403D),
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Explore",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(width: 200),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 20,
              right: 20,
              child: Text(
                "Explore The Universe",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}