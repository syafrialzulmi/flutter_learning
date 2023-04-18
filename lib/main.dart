import 'package:flutter_learning/core.dart';
import 'package:flutter_learning/state_util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar dari ahlinya ahli',
      debugShowCheckedModeBanner: false,
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}
