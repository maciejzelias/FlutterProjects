import 'package:bloc/bloc.dart';
import 'package:bloc_training/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final cubit = CounterCubit();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cubit.increment();
          });
        },
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(cubit.state.toString()),
      ),
    );
  }
}
