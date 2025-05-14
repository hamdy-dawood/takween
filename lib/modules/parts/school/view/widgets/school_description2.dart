import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/school_cubit.dart';

class SchooDescription2 extends StatelessWidget {
  const SchooDescription2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SchoolCubit, SchoolState>(
          builder: (context, state) {
            final controller = SchoolCubit.get(context);
        return Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/school/2.jpg",
                height: 500,
                width: 400,
              ),
              Positioned(
                bottom: 0,
                right: 85,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "2-school.mp3",
                    );
                  },
                  child: Container(
                    width: 190,
                    height: 225,
                    color: Colors.transparent
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 55,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "1-school.mp3",
                    );
                  },
                  child: Container(
                    width: 240,
                    height: 245,
                    color: Colors.transparent
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "4-school.mp3",
                    );
                  },
                  child: Container(
                    width: 80,
                    height: 240,
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
