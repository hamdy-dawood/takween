import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/takween_parts_cubit.dart';

class TakweenPartsScreen extends StatefulWidget {
  const TakweenPartsScreen({super.key});

  @override
  State<TakweenPartsScreen> createState() => _TakweenPartsScreenState();
}

class _TakweenPartsScreenState extends State<TakweenPartsScreen> {
  var player = AudioPlayer();

  @override
  void initState() {
    player.play(AssetSource("first.mp3"));
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TakweenPartsCubit(),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocBuilder<TakweenPartsCubit, TakweenPartsState>(
          builder: (context, state) {
            final controller = TakweenPartsCubit.get(context);
            return Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(image: DecorationImage(fit: BoxFit.fill, image: AssetImage("assets/images/educationBackground.jpg"))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      child: GridView.builder(
                        padding: const EdgeInsets.all(10),
                        itemCount: controller.partsList.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10, childAspectRatio: 2 / 1.5),
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => controller.partsList[index].page,
                                ));
                          },
                          borderRadius: BorderRadius.circular(25),
                          child: Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.white, boxShadow: [BoxShadow(spreadRadius: 2, blurRadius: 3, color: Colors.grey.shade300)]),
                            child: Center(
                              child: Text(
                                controller.partsList[index].title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontFamily: "cairo",
                                  fontSize: 30,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
