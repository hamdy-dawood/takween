import 'package:flutter/material.dart';
import 'package:takween/modules/home_page/view/home_page_screen.dart';
import 'package:video_player/video_player.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({
    super.key,
  });

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  late VideoPlayerController controller;
  bool hasNavigated = false;

  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/images/intro.mp4')
      ..addListener(() {
        setState(() {});
        if (controller.value.isCompleted && !hasNavigated) {
          hasNavigated = true;
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePageScreen(),
              ),
              (route) => false);
        }
      })
      ..setLooping(false)
      ..setVolume(1)
      ..initialize().then((value) => controller.play());
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.value.isInitialized ? VideoPlayer(controller) : const SizedBox(),
    );
  }
}
