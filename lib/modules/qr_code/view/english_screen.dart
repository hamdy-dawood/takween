import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/english_cubit.dart';
import 'package:takween/modules/qr_code/controller/english_state.dart';

class EnglishScreen extends StatefulWidget {
  const EnglishScreen({super.key});

  @override
  State<EnglishScreen> createState() => _EnglishScreenState();
}

class _EnglishScreenState extends State<EnglishScreen> {
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
      create: (context) => EnglishCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: const Icon(Icons.arrow_back),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
        body:
            BlocBuilder<EnglishCubit, EnglishState>(builder: (context, state) {
          var controller = EnglishCubit.get(context);
          return Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/endlishBackground.jpg"))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: GridView.builder(
                itemCount: controller.items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 2 / 2.6),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async {
                      await player
                          .play(AssetSource(controller.items[index].voicePath));
                    },
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        left: 10,
                        right: 10,
                      ),
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              controller.items[index].imagePath,
                            ),
                          ),
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
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
