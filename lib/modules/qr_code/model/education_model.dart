import 'package:flutter/material.dart';

class EducationModel {
  final String title;
  final Widget page;
  final String? voicePath;

  EducationModel({
    required this.title,
    required this.page,
    this.voicePath,
  });
}
