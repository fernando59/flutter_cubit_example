import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/bloc/user/user_cubit.dart';

import '../bloc/theme/theme_cubit.dart';
import '../models/user.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        centerTitle: true,
        actions: [
          ElevatedButton(
              onPressed: () {
                themeCubit.toggleTheme();
              },
              child: const Text('Toggle'))
        ],
      ),
      body: BlocBuilder<UserCubit, UserState>(
        builder: (BuildContext context, state) {
          if (state is UserInitial) {
            return const Center(
              child: Text('Not exist user information'),
            );
          } else if (state is UserActive) {
            return _UserInformation(
              user: state.user,
            );
          }
          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessibility_new),
        onPressed: () => Navigator.pushNamed(context, 'page2'),
      ),
    );
  }
}

class _UserInformation extends StatelessWidget {
  final User user;
  const _UserInformation({required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('General',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Divider(),
            ListTile(title: Text('Name : ${user.name}')),
            ListTile(title: Text('Age: ${user.age} ')),
            const Text('Profesions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Divider(),
            ...user.profesions
                .map((profession) => ListTile(title: Text(profession)))
                .toList()
          ],
        ),
      ),
    );
  }
}
