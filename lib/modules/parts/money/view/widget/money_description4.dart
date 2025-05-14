import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/money_cubit.dart';

class MoneyDescription4 extends StatelessWidget {
  const MoneyDescription4({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoneyCubit, MoneyState>(
          builder: (context, state) {
            final controller = MoneyCubit.get(context);
        return Center(
          child: Stack(
            children: [
              Image.asset(
                "assets/images/money/4.jpg",
                height: 500,
                width: 400,
              ),
              Positioned(
                top: 110,
                left: 70,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(voice:"20-money.mp3");
                  },
                  child: Container(
                    width: 260,
                    height: 110,
                    color: Colors.transparent
                  ),
                ),
              ),
              Positioned(
                bottom: 95,
                left: 65,
                child: GestureDetector(
                  onTap: () {
                    controller.voice(voice:"100-money.mp3");
                  },
                  child: Container(
                    width: 260,
                    height: 110,
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
