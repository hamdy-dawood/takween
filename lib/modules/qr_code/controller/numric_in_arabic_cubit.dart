import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/numric_in_arabic_state.dart';
import 'package:takween/modules/qr_code/model/data_model.dart';

class NumricInArabicCubit extends Cubit<NumricInArabicState> {
  NumricInArabicCubit() : super(InitNumricInArbicState());
  static NumricInArabicCubit get(context) => BlocProvider.of(context);
  List<DataModel> items = [
    DataModel(imagePath: "assets/images/1.jpg", voicePath: "numric/1.mp3"),
    DataModel(imagePath: "assets/images/2.jpg", voicePath: "numric/2.mp3"),
    DataModel(imagePath: "assets/images/3.jpg", voicePath: "numric/3.mp3"),
    DataModel(imagePath: "assets/images/4.jpg", voicePath: "numric/4.mp3"),
    DataModel(imagePath: "assets/images/5.jpg", voicePath: "numric/5.mp3"),
    DataModel(imagePath: "assets/images/6.jpg", voicePath: "numric/6.mp3"),
    DataModel(imagePath: "assets/images/7.jpg", voicePath: "numric/7.mp3"),
    DataModel(imagePath: "assets/images/8.jpg", voicePath: "numric/8.mp3"),
    DataModel(imagePath: "assets/images/9.jpg", voicePath: "numric/9.mp3"),
    DataModel(imagePath: "assets/images/10.jpg", voicePath: "numric/10.mp3"),
  ];
}
