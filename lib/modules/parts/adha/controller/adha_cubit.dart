import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'adha_state.dart';

class AdhaCubit extends Cubit<AdhaState> {
  AdhaCubit() : super(AdhaInitial());
  static AdhaCubit get(context) => BlocProvider.of(context);
  changePage(value) {
    emit(AdhaInitial());
    selectedPage = value;
    emit(ChagePageState());
  }

  int selectedPage = 0;
  PageController pageController = PageController();
  List<String> audio = [
    "1-adha.mp3",
    "2-adha.mp3",
    "3-adha.mp3",
  ];
  final player = AudioPlayer();
  voice({required String voice}) async {
    player.play(AssetSource(voice));
   }
}
