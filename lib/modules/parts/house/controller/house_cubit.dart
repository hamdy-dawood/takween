import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'house_state.dart';

class HouseCubit extends Cubit<HouseState> {
  HouseCubit() : super(HouseInitial());
  static HouseCubit get(context) => BlocProvider.of(context);
  changePage(value) {
    emit(HouseInitial());
    selectedPage = value;
    emit(ChagePageState());
  }

  int selectedPage = 0;
  PageController pageController = PageController();
  List<String> audio = [
    "1-home.mp3",
    "2-home.mp3",
    "3-home.mp3",
    "4-home.mp3",
    "5-home.mp3",
    "6-home.mp3",
    "7-home.mp3",
  ];
  final player = AudioPlayer();
  voice({required String voice}) async {
    player.play(AssetSource(voice));
   }
}
