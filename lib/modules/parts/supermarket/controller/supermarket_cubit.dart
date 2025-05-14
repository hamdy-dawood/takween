import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'supermarket_state.dart';

class SupermarketCubit extends Cubit<SupermarketState> {
  SupermarketCubit() : super(SupermarketInitial());
  static SupermarketCubit get(context) => BlocProvider.of(context);
  changePage(value) {
    emit(SupermarketInitial());
    selectedPage = value;
    emit(ChagePageState());
  }

  int selectedPage = 0;
  PageController pageController = PageController();
    List<String> audio = [
    "1-supermarket.m4a",
    "2-supermarket.m4a",
    "3-supermarket.m4a",
    "4-supermarket.m4a",
    "5-supermarket.mp3",
    "6-supermarket.mp3",
    "7-supermarket.mp3",
  ];
  final player = AudioPlayer();
  voice({required String voice}) async {
    player.play(AssetSource(voice));
   }
}
