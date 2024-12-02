import 'package:flutter/material.dart';

class StylesData {
  static final StylesData _instance = StylesData._internal();

  factory StylesData() => _instance;

  StylesData._internal();

  Color colorText = const Color(0xFF735F37);
  Color colorHintText = const Color(0xFF8F8579);
  
}
