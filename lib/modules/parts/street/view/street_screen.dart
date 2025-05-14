import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/parts/street/view/widgets/image_description_1.dart';

import '../controller/street_cubit.dart';
import 'widgets/image_description_2.dart';

class StreetScreen extends StatelessWidget {
  const StreetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StreetCubit(),
      child: Scaffold(
        backgroundColor: const Color(0xff2bafb2),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text(
            "Street",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<StreetCubit, StreetState>(
          builder: (context, state) {
            final controller = StreetCubit.get(context);
            return Column(
              children: [
                Expanded(
                    child: PageView(
                  controller: controller.pageController,
                  onPageChanged: (value) => controller.changePage(value),
                  children: [
                    const ImageDescription1(),
                    const ImageDescription2(),
                    GestureDetector(
                      onTap: () {
                        controller.voice(
                          voice: "traffic.m4a",
                        );
                      },
                      child: Image.asset(
                        "assets/images/street/3.jpg",
                        height: 500,
                        width: 400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.voice(
                          voice: "car.m4a",
                        );
                      },
                      child: Image.asset(
                        "assets/images/street/4.jpg",
                        height: 500,
                        width: 400,
                      ),
                    )
                  ],
                )),
                Row(
                  children: [
                    InkWell(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                          topRight: Radius.circular(36)),
                      onTap: () {
                        controller.pageController.previousPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.bounceInOut);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.only(top: 2, right: 2),
                        decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  color: Colors.black45)
                            ],
                            color: Color.fromARGB(255, 3, 41, 97),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(2),
                                bottomRight: Radius.circular(2),
                                topRight: Radius.circular(36))),
                        child: const Padding(
                            padding: EdgeInsets.only(top: 8.0, right: 10),
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.white,
                            )),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                              4,
                              (index) => Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: index == controller.selectedPage
                                            ? Colors.black
                                            : null,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            width: .8, color: Colors.black)),
                                  )),
                        ),
                      ),
                    ),
                    InkWell(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(36),
                          bottomLeft: Radius.circular(6),
                          topRight: Radius.circular(6)),
                      onTap: () {
                        controller.pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.bounceInOut);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(14),
                        margin: const EdgeInsets.only(top: 2, left: 2),
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 3, 41, 97),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                  color: Colors.black45)
                            ],
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(36),
                                bottomLeft: Radius.circular(2),
                                topRight: Radius.circular(2))),
                        child: const Padding(
                            padding: EdgeInsets.only(top: 8.0, left: 10),
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            )),
                      ),
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
