import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/school_cubit.dart';
import 'widgets/school_description1.dart';
import 'widgets/school_description2.dart';

class SchoolScreen extends StatelessWidget {
  const SchoolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SchoolCubit(),
      child: Scaffold(
        backgroundColor: const Color(0xfff2ce90),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
          scrolledUnderElevation: 0,
          title: const Text(
            "School",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<SchoolCubit, SchoolState>(
          builder: (context, state) {
            final controller = SchoolCubit.get(context);
            return Column(
              children: [
                Expanded(
                    child: PageView(
                  controller: controller.pageController,
                  onPageChanged: (value) => controller.changePage(value),
                  children: [
                    const SchooDescription1(),
                    const SchooDescription2(),
                    GestureDetector(
                      onTap: () {
                        controller.voice(
                          voice: "3-school.mp3",
                        );
                      },
                      child: Image.asset(
                        "assets/images/school/3.jpg",
                        height: 500,
                        width: 400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.voice(
                          voice: "4-school.mp3",
                        );
                      },
                      child: Image.asset(
                        "assets/images/school/4.jpg",
                        height: 500,
                        width: 400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.voice(
                          voice: "5-school.mp3",
                        );
                      },
                      child: Image.asset(
                        "assets/images/school/5.jpg",
                        height: 500,
                        width: 400,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.voice(
                          voice: "6-school.mp3",
                        );
                      },
                      child: Image.asset(
                        "assets/images/school/6.jpg",
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
                            color: Color.fromARGB(255, 209, 170, 102),
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
                              6,
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
                            color: Color.fromARGB(255, 209, 170, 102),
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
