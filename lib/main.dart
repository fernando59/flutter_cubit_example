import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/bloc/user/user_cubit.dart';
import 'package:flutter_cubit/screens/page1_screen.dart';
import 'package:flutter_cubit/screens/page2_screen.dart';

import 'bloc/theme/theme_cubit.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Material App',
            theme: state,
            initialRoute: 'page1',
            routes: {
              'page1': (_) => const Page1Screen(),
              'page2': (_) => const Page2Screen(),
            },
          );
        },
      ),
    );
  }
}
