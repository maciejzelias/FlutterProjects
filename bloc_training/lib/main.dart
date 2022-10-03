import 'package:bloc/bloc.dart';
import 'package:bloc_training/Screens/HomePage.dart';
import 'package:flutter/material.dart';

import 'cubit/SimpleBlocObserver.dart';
import 'cubit/counter_cubit.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  CounterCubit()
    ..increment()
    ..close();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Training App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
