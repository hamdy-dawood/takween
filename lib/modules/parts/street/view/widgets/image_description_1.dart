import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/street_cubit.dart';

class ImageDescription1 extends StatelessWidget {
  const ImageDescription1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StreetCubit, StreetState>(
      builder: (context, state) {
        final controller = StreetCubit.get(context);
        return Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/street/1.jpg",
                height: 500,
                width: 400,
              ),
              Positioned(
                top: 50,
                left: 185,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "traffic.m4a",
                    );
                  },
                  child: Container(
                      width: 70, height: 225, color: Colors.transparent),
                ),
              ),
              Positioned(
                top: 75,
                right: 0,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "man.m4a",
                    );
                  },
                  child: Container(
                      width: 50, height: 260, color: Colors.transparent),
                ),
              ),
              Positioned(
                bottom: 80,
                right: 50,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(
                      voice: "old_man.m4a",
                    );
                  },
                  child: Container(
                      width: 130, height: 180, color: Colors.transparent),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
