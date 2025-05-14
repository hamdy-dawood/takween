import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/english_state.dart';
import 'package:takween/modules/qr_code/model/data_model.dart';

class EnglishCubit extends Cubit<EnglishState> {
  EnglishCubit() : super(InitEnglishState());
  static EnglishCubit get(context) => BlocProvider.of(context);

  List<DataModel> items = [
    DataModel(imagePath: "assets/images/A.jpg", voicePath: "english/a.mp3"),
    DataModel(imagePath: "assets/images/b.jpg", voicePath: "english/b.mp3"),
    DataModel(imagePath: "assets/images/c.jpg", voicePath: "english/c.mp3"),
    DataModel(imagePath: "assets/images/d.jpg", voicePath: "english/d.mp3"),
    DataModel(imagePath: "assets/images/e.jpg", voicePath: "english/e.mp3"),
    DataModel(imagePath: "assets/images/f.jpg", voicePath: "english/f.mp3"),
    DataModel(imagePath: "assets/images/g.jpg", voicePath: "english/g.mp3"),
    DataModel(imagePath: "assets/images/h.jpg", voicePath: "english/h.mp3"),
    DataModel(imagePath: "assets/images/i.jpg", voicePath: "english/i.mp3"),
    DataModel(imagePath: "assets/images/j.jpg", voicePath: "english/j.mp3"),
    DataModel(imagePath: "assets/images/k.jpg", voicePath: "english/k.mp3"),
    DataModel(imagePath: "assets/images/l.jpg", voicePath: "english/l.mp3"),
    DataModel(imagePath: "assets/images/m.jpg", voicePath: "english/m.mp3"),
    DataModel(imagePath: "assets/images/n.jpg", voicePath: "english/n.mp3"),
    DataModel(imagePath: "assets/images/o.jpg", voicePath: "english/o.mp3"),
    DataModel(imagePath: "assets/images/p.jpg", voicePath: "english/pen.mp3"),
    DataModel(imagePath: "assets/images/q.jpg", voicePath: "english/Q.mp3"),
    DataModel(imagePath: "assets/images/r.jpg", voicePath: "english/r.mp3"),
    DataModel(imagePath: "assets/images/s.jpg", voicePath: "english/s.mp3"),
    DataModel(imagePath: "assets/images/t.jpg", voicePath: "english/t.mp3"),
    DataModel(imagePath: "assets/images/u.jpg", voicePath: "english/u.mp3"),
    DataModel(imagePath: "assets/images/v.jpg", voicePath: "english/v.mp3"),
    DataModel(imagePath: "assets/images/w.jpg", voicePath: "english/w.mp3"),
    DataModel(imagePath: "assets/images/x.jpg", voicePath: "english/x.mp3"),
    DataModel(imagePath: "assets/images/y.jpg", voicePath: "english/y.mp3"),
    DataModel(imagePath: "assets/images/z.jpg", voicePath: "english/z.mp3"),
  ];
}
