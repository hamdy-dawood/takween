import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/color_cubit.dart';
import 'package:takween/modules/qr_code/controller/color_state.dart';

class ColorScreen extends StatefulWidget {
  const ColorScreen({super.key});

  @override
  State<ColorScreen> createState() => _ColorScreenState();
}

class _ColorScreenState extends State<ColorScreen> {
  var player = AudioPlayer();
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorCubit(),
      child: BlocBuilder<ColorCubit, ColorState>(builder: (context, state) {
        final controller = ColorCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
          ),
          body: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/colorbackground.jpg"),
              ),
            ),
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: controller.item.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 2 / 2.5),
              itemBuilder: (context, index) => InkWell(
                onTap: () async {
                  await player.play(AssetSource(controller.item[index].path));
                },
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(controller.item[index].colorName),
                      ),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 3,
                            color: Colors.grey.shade300)
                      ]),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
