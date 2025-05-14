import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/numric_in_englis_cubit.dart';
import 'package:takween/modules/qr_code/controller/numric_in_english_state.dart';

class NumricInEnglishScreen extends StatefulWidget {
  const NumricInEnglishScreen({super.key});

  @override
  State<NumricInEnglishScreen> createState() => _NumricInEnglishScreenState();
}

class _NumricInEnglishScreenState extends State<NumricInEnglishScreen> {
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
      create: (context) => NumricInEnglishCubit(),
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            child: const Icon(Icons.arrow_back),
            onTap: () => Navigator.of(context).pop(),
          ),
        ),
        body: BlocBuilder<NumricInEnglishCubit, NumricInEnglishState>(
            builder: (context, state) {
          var controller = NumricInEnglishCubit.get(context);
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
                    childAspectRatio: 2 / 2.6, crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () async {
                      await player.play(AssetSource(controller.items[index]));
                    },
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                      margin:
                          const EdgeInsets.only(top: 20, left: 10, right: 10),
                      width: 50,
                      height: 50,
                      padding: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(controller.imageItem[index])),
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
