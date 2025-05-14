import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/fitr_cubit.dart';
 
class FitrScreen extends StatelessWidget {
  const FitrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FitrCubit(),
      child: BlocBuilder<FitrCubit, FitrState>(
        builder: (context, state) {
          final controller = FitrCubit.get(context);

          return Scaffold(
              backgroundColor:controller.selectedPage==0?const Color(0xff9e9fb4): const Color.fromARGB(255, 255, 255, 255),
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                elevation: 0,
                scrolledUnderElevation: 0,
                title:   Text(
                  "Fitr",
                  style: TextStyle(
                      color:controller.selectedPage!=0?const Color.fromARGB(255, 99, 101, 135): Colors.white, fontWeight: FontWeight.w700),
                ),
                centerTitle: true,
              ),
              body: Column(
                children: [
                  Expanded(
                      child: PageView.builder(
                    controller: controller.pageController,
                    onPageChanged: (value) => controller.changePage(value),
                    itemCount: 3,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                                                  controller.voice(voice: controller.audio[index]);

                      },
                      child: Image.asset("assets/images/fitr/${index + 1}.jpg"),
                    ),
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
                              curve: Curves.easeIn);
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
                              color: Colors.grey,
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
                                3,
                                (index) => Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      width: 15,
                                      height: 15,
                                      decoration: BoxDecoration(
                                          color:
                                              index == controller.selectedPage
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
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          margin: const EdgeInsets.only(top: 2, left: 2),
                          decoration: const BoxDecoration(
                              color: Colors.grey,
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
              ));
        },
      ),
    );
  }
}
