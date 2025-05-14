import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/arabic_state.dart';
import 'package:takween/modules/qr_code/model/data_model.dart';

class ArabicCubit extends Cubit<ArabicState> {
  ArabicCubit() : super(InitArabicState());
  static ArabicCubit get(context) => BlocProvider.of(context);

  List<DataModel> items = [
    DataModel(imagePath: "assets/images/أ.jpg", voicePath: "arabic/أ.mp3"),
    DataModel(imagePath: "assets/images/ب.jpg", voicePath: "arabic/ب.mp3"),
    DataModel(imagePath: "assets/images/ت.jpg", voicePath: "arabic/ت.mp3"),
    DataModel(imagePath: "assets/images/ث.jpg", voicePath: "arabic/ث.mp3"),
    DataModel(imagePath: "assets/images/ج.jpg", voicePath: "arabic/ج.mp3"),
    DataModel(imagePath: "assets/images/ح.jpg", voicePath: "arabic/ح.mp3"),
    DataModel(imagePath: "assets/images/خ.jpg", voicePath: "arabic/خ.mp3"),
    DataModel(imagePath: "assets/images/د.jpg", voicePath: "arabic/د.mp3"),
    DataModel(imagePath: "assets/images/ذ.jpg", voicePath: "arabic/ذ.mp3"),
    DataModel(imagePath: "assets/images/ر.jpg", voicePath: "arabic/ر.mp3"),
    DataModel(imagePath: "assets/images/ز.jpg", voicePath: "arabic/ز.mp3"),
    DataModel(imagePath: "assets/images/س.jpg", voicePath: "arabic/س.mp3"),
    DataModel(imagePath: "assets/images/ش.jpg", voicePath: "arabic/ش.mp3"),
    DataModel(imagePath: "assets/images/ص.jpg", voicePath: "arabic/ص.mp3"),
    DataModel(imagePath: "assets/images/ض.jpg", voicePath: "arabic/ض.mp3"),
    DataModel(imagePath: "assets/images/ط.jpg", voicePath: "arabic/ط.mp3"),
    DataModel(imagePath: "assets/images/ظ.jpg", voicePath: "arabic/ظ.mp3"),
    DataModel(imagePath: "assets/images/ع.jpg", voicePath: "arabic/ع.mp3"),
    DataModel(imagePath: "assets/images/غ.jpg", voicePath: "arabic/غ.mp3"),
    DataModel(imagePath: "assets/images/ف.jpg", voicePath: "arabic/ف.mp3"),
    DataModel(imagePath: "assets/images/ق.jpg", voicePath: "arabic/ق.mp3"),
    DataModel(imagePath: "assets/images/ك.jpg", voicePath: "arabic/ك.mp3"),
    DataModel(imagePath: "assets/images/ل.jpg", voicePath: "arabic/ل.mp3"),
    DataModel(imagePath: "assets/images/م.jpg", voicePath: "arabic/م.mp3"),
    DataModel(imagePath: "assets/images/ن.jpg", voicePath: "arabic/ن.mp3"),
    DataModel(imagePath: "assets/images/ه.jpg", voicePath: "arabic/ه.mp3"),
    DataModel(imagePath: "assets/images/و.jpg", voicePath: "arabic/و.mp3"),
    DataModel(imagePath: "assets/images/ي.jpg", voicePath: "arabic/ي.mp3"),
  ];
}
