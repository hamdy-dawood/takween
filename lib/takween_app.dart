import 'package:flutter/material.dart';

import 'modules/splash/view/intro_screen.dart';

class TakweenApp extends StatelessWidget {
  const TakweenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'تكوين',
      locale: const Locale("ar"),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white),
      home: const IntroScreen(),
    );
  }
}
