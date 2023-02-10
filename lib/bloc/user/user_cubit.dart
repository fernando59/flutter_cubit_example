import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectUser(User user) {
    emit(UserActive(user));
  }

  void changeAge(int age) {
    final currentState = state;
    if (currentState is UserActive) {
      final newUser = currentState.user.copyWith(age: 30);
      emit(UserActive(newUser));
    }
  }
}
