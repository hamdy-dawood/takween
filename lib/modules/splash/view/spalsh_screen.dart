import 'dart:async';

import 'package:flutter/material.dart';
import 'package:takween/modules/home_page/view/home_page_screen.dart';
import 'package:takween/modules/on_boarding/view/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  setTimer() {
    Timer(const Duration(milliseconds: 1900), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePageScreen(),
          ),
          (route) => false);
    });
  }

  @override
  void initState() {
    setTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/takween.png",
          scale: 2,
        ),
      ),
    );
  }
}
