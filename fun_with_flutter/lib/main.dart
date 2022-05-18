import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

randomColor() {
  return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  void initState() {
    // fetch data from firebase
    super.initState();
  }

  @override
  void dispose() {
    // implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Flutter is fun"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  color: randomColor(),
                  width: 500,
                  height: 500,
                ),
                Text(
                  '$count',
                  style: const TextStyle(fontSize: 60),
                ),
              ],
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), label: "Business"),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: "School"),
          ],
        ),
        drawer: const Drawer(
          child: Text("hello !"),
        ),
      ),
    );
  }
}

class BusinessState extends StatelessWidget {
  const BusinessState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Business page"),
      )),
    );
  }
}

class SchoolState extends StatelessWidget {
  const SchoolState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("School page"),
      )),
    );
  }
}
