import 'package:bloc/bloc.dart';
import 'package:bloc_training/Screens/HomePage.dart';
import 'package:flutter/material.dart';

import 'bloc/counter_bloc.dart';
import 'cubit/SimpleBlocObserver.dart';
import 'cubit/counter_cubit.dart';

void main() {
  // Bloc.observer = SimpleBlocObserver();

  // final cubit = CounterCubit(); // creating a cubit with standard state equal 0
  // cubit.increment(); //  incrementing cubit to 1
  // CounterCubit()
  //   ..increment()
  //   ..close(); //  shows current state and next one

  final bloc = CounterBloc();
  print(bloc.state);
  bloc.add(CounterIncrementPressed());
  // await Future.delayed(Duration.zero);
  print(bloc.state);
  // await bloc.close();

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
