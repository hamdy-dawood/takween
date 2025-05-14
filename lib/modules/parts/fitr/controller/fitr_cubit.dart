import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'fitr_state.dart';

class FitrCubit extends Cubit<FitrState> {
  FitrCubit() : super(FitrInitial());
  static FitrCubit get(context) => BlocProvider.of(context);
  changePage(value) {
    emit(FitrInitial());
    selectedPage = value;
    emit(ChagePageState());
  }

  int selectedPage = 0;
  PageController pageController = PageController();
  List<String> audio = [
    "1-fitr.mp3",
    "2-fitr.mp3",
    "3-fitr.mp3",
  ];
  final player = AudioPlayer();
  voice({required String voice}) async {
    player.play(AssetSource(voice));
   }
}
