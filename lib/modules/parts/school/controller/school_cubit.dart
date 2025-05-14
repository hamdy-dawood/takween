 

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'school_state.dart';

class SchoolCubit extends Cubit<SchoolState> {
  SchoolCubit() : super(SchoolInitial());
    static SchoolCubit get(context) => BlocProvider.of(context);
  changePage(value) {
    emit(SchoolInitial());
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
