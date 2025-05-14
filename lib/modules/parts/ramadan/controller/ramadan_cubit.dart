 

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'ramadan_state.dart';

class RamadanCubit extends Cubit<RamadanState> {
  RamadanCubit() : super(RamadanInitial());
    static RamadanCubit get(context) => BlocProvider.of(context);
  changePage(value) {
    emit(RamadanInitial());
    selectedPage = value;
    emit(ChagePageState());
  }

  int selectedPage = 0;
  PageController pageController = PageController();
   List<String> audio = [
    "1-ramadan.mp3",
    "2-ramadan.mp3",
    "3-ramadan.mp3",
  ];
  final player = AudioPlayer();
  voice({required String voice}) async {
    player.play(AssetSource(voice));
   }
}
