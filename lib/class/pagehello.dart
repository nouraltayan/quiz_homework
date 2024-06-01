// class/pagehello.dart
import 'package:flutter/material.dart';
import 'package:home_quiz_app/class/LogInPage.dart';
import 'package:home_quiz_app/color/color_palete.dart';
import 'package:home_quiz_app/core/res/app_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
     const Duration(seconds:1),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LogInPage(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary,
      body: Center(
        child: Text(
          "QuiZzzzz",
          style: styleOfSplashScreen,
        ),
      ),
    );
  }
}