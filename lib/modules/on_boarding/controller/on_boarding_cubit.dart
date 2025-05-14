import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_boarding_state.dart';

class OnBaordingCubit extends Cubit<OnBaordingState> {
  OnBaordingCubit() : super(OnBaordingInitial());
  static OnBaordingCubit get(context) => BlocProvider.of(context);
  List<String> images = [
    "assets/images/image_1.gif",
    "assets/images/image_2.gif",
    "assets/images/image_3.gif",
  ];
  PageController controller = PageController();
  int selectedImage = 0;
  changeImage(int index) {
    emit(OnBaordingInitial());

    selectedImage = index;
    emit(ChangeImageState());
  }
}
