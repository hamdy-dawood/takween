import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../home_page/view/home_page_screen.dart';
import '../controller/on_boarding_cubit.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnBaordingCubit>(
      create: (context) => OnBaordingCubit(),
      child: Scaffold(
        body: BlocBuilder<OnBaordingCubit, OnBaordingState>(
          builder: (context, state) {
            final controller = OnBaordingCubit.get(context);
            return Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: controller.controller,
                    onPageChanged: (value) {
                      controller.changeImage(value);
                    },
                    itemBuilder: (context, index) =>
                        Image.asset(controller.images[index], scale: .5),
                    itemCount: controller.images.length,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      controller.selectedImage == controller.images.length - 1
                          ? IconButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(16)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.deepPurple)),
                              onPressed: () {
                                controller.controller.previousPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.bounceInOut);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white,
                              ))
                          : TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePageScreen(),
                                    ),
                                    (route) => false);
                              },
                              child: const Text(
                                "Skip",
                                style: TextStyle(fontSize: 20),
                              )),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                            controller.images.length,
                            (index) => Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                      color: controller.selectedImage == index
                                          ? Colors.grey
                                          : null,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          width: .8, color: Colors.grey)),
                                )),
                      ),
                      controller.selectedImage == controller.images.length - 1
                          ? TextButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePageScreen(),
                                    ),
                                    (route) => false);
                              },
                              child: const Text(
                                "Next",
                                style: TextStyle(fontSize: 20),
                              ))
                          : IconButton(
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                      const EdgeInsets.all(16)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.deepPurple)),
                              onPressed: () {
                                controller.controller.nextPage(
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.bounceInOut);
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colors.white,
                              ))
                    ],
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
