import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/numric_in_english_state.dart';

class NumricInEnglishCubit extends Cubit<NumricInEnglishState> {
  NumricInEnglishCubit() : super(InitNumricInEnglisState());
  static NumricInEnglishCubit get(context) => BlocProvider.of(context);
  List<String> items = [
    "numricE/1.mp3",
    "numricE/2.mp3",
    "numricE/3.mp3",
    "numricE/4.mp3",
    "numricE/5.mp3",
    "numricE/6.mp3",
    "numricE/7.mp3",
    "numricE/8.mp3",
    "numricE/9.mp3",
    "numricE/10.mp3",
  ];

  List<String> imageItem = [
    "assets/images/1E.jpg",
    "assets/images/2E.jpg",
    "assets/images/3E.jpg",
    "assets/images/4E.jpg",
    "assets/images/5E.jpg",
    "assets/images/6E.jpg",
    "assets/images/7E.jpg",
    "assets/images/8E.jpg",
    "assets/images/9E.jpg",
    "assets/images/10E.jpg",
  ];
}
