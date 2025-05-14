import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/money_cubit.dart';

class MoneyDescription2 extends StatelessWidget {
  const MoneyDescription2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoneyCubit, MoneyState>(
          builder: (context, state) {
            final controller = MoneyCubit.get(context);
        return Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/money/2.jpg",
                height: 500,
                width: 400,
              ),
              Positioned(
                top: 110,
                left: 73,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(voice:"half-money.mp3");
                  },
                  child: Container(
                    width: 258,
                    height: 110,
                    color: Colors.transparent
                  ),
                ),
              ),
              Positioned(
                bottom: 95,
                left: 70,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(voice:"5-money.mp3");
                  },
                  child: Container(
                    width: 260,
                    height: 115,
                    color: Colors.transparent
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
