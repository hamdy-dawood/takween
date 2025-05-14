 import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 
part 'money_state.dart';

class MoneyCubit extends Cubit<MoneyState> {
  MoneyCubit() : super(MoneyInitial());
   static MoneyCubit get(context) => BlocProvider.of(context);
  changePage(value) {
    emit(MoneyInitial());
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
