import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(ThemeData.light());

  void toggleTheme() {
    if (state == ThemeData.light()) {
      emit(ThemeData.dark());
    } else {
      emit(ThemeData.light());
    }
  }
}
