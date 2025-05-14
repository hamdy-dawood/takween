import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/street_cubit.dart';

class ImageDescription2 extends StatelessWidget {
  const ImageDescription2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StreetCubit, StreetState>(
      builder: (context, state) {
        final controller = StreetCubit.get(context);
        return Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/street/2.jpg",
                height: 500,
                width: 400,
              ),
              Positioned(
                top: 30, // Adjust position as needed
                right: 110, // Adjust position as needed
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "traffic.m4a",
                    );
                  },
                  child: Container(
                    width: 80,
                    height: 350,
                    color: Colors.transparent,
                  ),
                ),
              ),
              Positioned(
                top: 75,
                left: 0,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "man.m4a",
                    );
                  },
                  child: Container(
                    width: 65,
                    height: 250,
                    color: Colors.transparent,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "car.m4a",
                    );
                  },
                  child: Container(
                    width: 170,
                    height: 180,
                    color: Colors.transparent,
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
