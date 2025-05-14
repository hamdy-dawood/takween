import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'street_state.dart';

class StreetCubit extends Cubit<StreetState> {
  StreetCubit() : super(StreetInitial());
  static StreetCubit get(context) => BlocProvider.of(context);
  changePage(value) {
    emit(StreetInitial());
    selectedPage = value;
    emit(ChagePageState());
  }

  int selectedPage = 0;
  PageController pageController = PageController();
  final player = AudioPlayer();
  voice({required String voice}) async {
    player.play(AssetSource(voice));
   }
}
