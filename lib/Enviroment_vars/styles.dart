import 'package:flutter/material.dart';

class StylesData {
  static final StylesData _instance = StylesData._internal();

  factory StylesData() => _instance;

  StylesData._internal();

  Color colorText = Color(0xFF735F37);
}
