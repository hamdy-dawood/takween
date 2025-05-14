import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/takween_parts_cubit.dart';

class TakweenPartsScreen extends StatelessWidget {
  const TakweenPartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TakweenPartsCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Takween",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<TakweenPartsCubit, TakweenPartsState>(
          builder: (context, state) {
            final controller = TakweenPartsCubit.get(context);
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          AssetImage("assets/images/educationBackground.jpg"))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    height: 600,
                    child: GridView.builder(
                      padding: const EdgeInsets.all(10),
                      itemCount: controller.partsList.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: 2 / 1.5),
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    controller.partsList[index].page,
                              ));
                        },
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 3,
                                    color: Colors.grey.shade300)
                              ]),
                          child: Center(
                            child: Text(
                              controller.partsList[index].title,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontFamily: "cairo",
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
