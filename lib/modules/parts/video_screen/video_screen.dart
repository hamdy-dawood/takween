import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({
    super.key,
    required this.title,
    required this.videoPath,
    required this.background,
  });

  final String title, videoPath, background;

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.asset(widget.videoPath)
      ..addListener(() {
        setState(() {});
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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Color.fromARGB(255, 99, 101, 135),
            fontFamily: "cairo",
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(widget.background),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              controller.value.isInitialized
                  ? Center(
                    child: SizedBox(
                      width: controller.value.size.width,
                      height: controller.value.size.height,
                        child: VideoPlayer(controller),
                      ),
                  )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
