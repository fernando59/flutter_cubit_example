import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/bloc/user/user_cubit.dart';
import 'package:flutter_cubit/models/user.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioCubit = context.read<UserCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              final user =
                  User(name: 'Fernando', age: 22, profesions: ['Programmer']);
              usuarioCubit.selectUser(user);
            },
            child:
                const Text('Set User', style: TextStyle(color: Colors.white)),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              usuarioCubit.changeAge(23);
            },
            child:
                const Text('Change Age', style: TextStyle(color: Colors.white)),
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: () {
              usuarioCubit.addProfession();
            },
            child: const Text('Add Profesion',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      )),
    );
  }
}
