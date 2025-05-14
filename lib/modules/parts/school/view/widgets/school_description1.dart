import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/school_cubit.dart';

class SchooDescription1 extends StatelessWidget {
  const SchooDescription1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchoolCubit, SchoolState>(
      builder: (context, state) {
        final controller = SchoolCubit.get(context);
        return Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/school/1.jpg",
                height: 500,
                width: 400,
              ),
              Positioned(
                bottom: 0,
                left: 70,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "3-school.mp3",
                    );
                  },
                  child: Container(
                    width: 190,
                    height: 235,
                    color: Colors.transparent
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "4-school.mp3",
                    );
                  },
                  child: Container(
                    width: 90,
                    height: 250,
                    color: Colors.transparent
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 2,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "5-school.mp3",
                    );
                  },
                  child: Container(
                    width: 260,
                    height: 220,
                    color: Colors.transparent
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
