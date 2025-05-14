import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/education_state.dart';
import 'package:takween/modules/qr_code/model/education_model.dart';
import 'package:takween/modules/qr_code/view/arabic_screen.dart';
import 'package:takween/modules/qr_code/view/color_screen.dart';
import 'package:takween/modules/qr_code/view/english_screen.dart';
import 'package:takween/modules/qr_code/view/ershadat_screen.dart';
import 'package:takween/modules/qr_code/view/numric_in_arabic_screen.dart';
import 'package:takween/modules/qr_code/view/numric_in_english_screen.dart';

class EducationCubit extends Cubit<EducationState> {
  EducationCubit() : super(InitEducatinState());
  static EducationCubit get(context) => BlocProvider.of(context);
  List<EducationModel> items = [
    EducationModel(
        title: "الارقام العربية",
        page: const NumricInArabicScreen(),
        voicePath: "soundArabicBack.mp3"),
    EducationModel(
        title: "الحروف العربية",
        page: const ArabicScreen(),
        voicePath: "arAlph.mp3"),
    EducationModel(
        title: "الارقام الانجليزية",
        page: const NumricInEnglishScreen(),
        voicePath: "soundEnglishNub.mp3"),
    EducationModel(
        title: "الحروف الانجليزية",
        page: const EnglishScreen(),
        voicePath: "engAlph.mp3"),
    EducationModel(
        title: "إرشادات عامة",
        page: const ErshadatScreen(),
        voicePath: "guide.mp3"),
    EducationModel(
      title: "ألوان",
      page: const ColorScreen(),
      voicePath: "color.mp3",
    ),
  ];
}
