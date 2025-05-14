import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/numric_in_arabic_cubit.dart';
import 'package:takween/modules/qr_code/controller/numric_in_arabic_state.dart';

class NumricInArabicScreen extends StatefulWidget {
  const NumricInArabicScreen({super.key});

  @override
  State<NumricInArabicScreen> createState() => _NumricInArabicScreenState();
}

class _NumricInArabicScreenState extends State<NumricInArabicScreen> {
  var player = AudioPlayer();

  @override
  void dispose() {
    // TODO: implement dispose
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NumricInArabicCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: const Icon(Icons.arrow_back),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
        body: BlocBuilder<NumricInArabicCubit, NumricInArabicState>(
            builder: (context, state) {
          var controller = NumricInArabicCubit.get(context);
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                        "assets/images/englishnumberphotoBack.jpg"))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                itemCount: controller.items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 2 / 2.6),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async {
                      await player
                          .play(AssetSource(controller.items[index].voicePath));
                    },
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  controller.items[index].imagePath)),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 3,
                                color: Colors.grey.shade300)
                          ]),
                    ),
                  );
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
