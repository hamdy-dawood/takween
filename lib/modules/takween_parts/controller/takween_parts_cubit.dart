import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/parts/video_screen/video_screen.dart';

import '../model/takween_model.dart';

part 'takween_parts_state.dart';

class TakweenPartsCubit extends Cubit<TakweenPartsState> {
  TakweenPartsCubit() : super(TakweenPartsInitial());

  static TakweenPartsCubit get(context) => BlocProvider.of(context);
  List<TakweenPartsModel> partsList = [
    TakweenPartsModel(
      title: "الشارع",
      page: const VideoScreen(
        title: "الشارع",
        videoPath: "assets/images/street/vid.mp4",
        background: "assets/images/street/bg.jpeg",
      ),
    ),
    TakweenPartsModel(
      title: "السوبر ماركت",
      page: const VideoScreen(
        title: "السوبر ماركت",
        videoPath: "assets/images/supermarket/vid.mp4",
        background: "assets/images/supermarket/bg.jpeg",
      ),
    ),
    TakweenPartsModel(
      title: "المدرسة",
      page: const VideoScreen(
        title: "المدرسة",
        videoPath: "assets/images/school/vid.mp4",
        background: "assets/images/school/bg.jpeg",
      ),
    ),
    TakweenPartsModel(
      title: "المنزل",
      page: const VideoScreen(
        title: "المنزل",
        videoPath: "assets/images/home/vid.mp4",
        background: "assets/images/home/bg.jpeg",
      ),
    ),
    TakweenPartsModel(
      title: "النقود",
      page: const VideoScreen(
        title: "النقود",
        videoPath: "assets/images/money/vid.mp4",
        background: "assets/images/money/bg.jpeg",
      ),
    ),
    TakweenPartsModel(
      title: "عيد الفطر",
      page: const VideoScreen(
        title: "عيد الفطر",
        videoPath: "assets/images/fitr/vid.mp4",
        background: "assets/images/fitr/bg.jpeg",
      ),
    ),
    TakweenPartsModel(
      title: "عيد الأضحي",
      page: const VideoScreen(
        title: "عيد الأضحي",
        videoPath: "assets/images/adha/vid.mp4",
        background: "assets/images/adha/bg.jpeg",
      ),
    ),
    TakweenPartsModel(
      title: "شهر رمضان",
      page: const VideoScreen(
        title: "شهر رمضان",
        videoPath: "assets/images/ramadan/vid.mp4",
        background: "assets/images/ramadan/bg.jpeg",
      ),
    ),
  ];
}
