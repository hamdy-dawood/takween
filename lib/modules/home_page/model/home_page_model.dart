import 'package:flutter/material.dart';

class HomePageModel {
  final String title;
  final String? image;
  final String icon;
  final Widget page;

  HomePageModel(
      {required this.page,
      required this.title,
      required this.image,
      required this.icon});
}
