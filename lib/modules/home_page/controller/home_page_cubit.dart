import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../qr_code/view/education_screen.dart';
import '../../takween_parts/view/takween_parts_screen.dart';
import '../model/home_page_model.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(HomePageInitial());
  static HomePageCubit get(context) => BlocProvider.of(context);
  List<HomePageModel> items = [
    HomePageModel(
        title: "التكوين البصري",
        image: "first.mp3",
        icon: "assets/images/home/first.jpg",
        page: const TakweenPartsScreen()),
    HomePageModel(
        title: "تعلم الهجاء",
        image: "second.mp3",
        icon: "assets/images/home/second.jpg",
        page: const EducationSCreen()),
  ];
}
