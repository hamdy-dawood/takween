import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:takween/modules/qr_code/controller/color_state.dart';
import 'package:takween/modules/qr_code/model/color_model.dart';

class ColorCubit extends Cubit<ColorState> {
  ColorCubit() : super(InitColorState());
  static ColorCubit get(context) => BlocProvider.of(context);
  List<ColorModel> item = [
    ColorModel(
        colorName: "assets/images/black.jpg",
        colorValue: Colors.black,
        path: "color/black.aac"),
    ColorModel(
        colorName: "assets/images/yellow.jpg",
        colorValue: Colors.yellow,
        path: "color/yellow.aac"),
    ColorModel(
        colorName: "assets/images/white.jpg",
        colorValue: Colors.white,
        path: "color/white.aac"),
    ColorModel(
        colorName: "assets/images/brown.jpg",
        colorValue: Colors.brown,
        path: "color/brown.aac"),
    ColorModel(
        colorName: "assets/images/green.jpg",
        colorValue: Colors.green,
        path: "color/green.aac"),
    ColorModel(
        colorName: "assets/images/purple.jpg",
        colorValue: Colors.purple,
        path: "color/purple.aac"),
    ColorModel(
        colorName: "assets/images/blue.jpg",
        colorValue: Colors.blue,
        path: "color/blue.aac"),
    ColorModel(
        colorName: "assets/images/pink.jpg",
        colorValue: Colors.pink,
        path: "color/pink.aac"),
    ColorModel(
        colorName: "assets/images/red.jpg",
        colorValue: Colors.red,
        path: "color/red.aac"),
    ColorModel(
        colorName: "assets/images/orange.jpg",
        colorValue: Colors.orange,
        path: "color/orange.aac"),
  ];
}
