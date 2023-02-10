part of 'user_cubit.dart';

abstract class UserState {}

class UserInitial extends UserState {
  final existUser = false;

  @override
  String toString() {
    return 'Userinit existUser = $existUser';
  }
}

class UserActive extends UserState {
  final existUser = true;
  final User user;

  UserActive(this.user);
}
