import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/home_page_cubit.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  var player = AudioPlayer();
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageCubit>(
      create: (context) => HomePageCubit(),
      child: Scaffold(
        /* appBar: AppBar(
          forceMaterialTransparency: false,
          title: const Text(
            "Takween",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple),
          ),
          centerTitle: true,
        ), */
        body: BlocBuilder<HomePageCubit, HomePageState>(
          builder: (context, state) {
            final controller = HomePageCubit.get(context);
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/home/homebackground.jpg"),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.items.length,
                  (index) => InkWell(
                    borderRadius: BorderRadius.circular(25),
                    onTap: () async {
                      await player.play(
                          AssetSource(controller.items[index].image ?? ""));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => controller.items[index].page,
                          ));
                    },
                    child: Container(
                      width: 250,
                      height: 300,
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 3,
                                color: Colors.grey.shade300)
                          ]),
                      child: Column(
                        children: [
                          Image.asset(
                            controller.items[index].icon,
                            width: 200,
                            height: 200,
                          ),
                          Text(
                            controller.items[index].title,
                            style: const TextStyle(
                                fontFamily: "cairo",
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.deepPurple),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
