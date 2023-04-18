import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';
import '../controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  Widget build(context, HomeController controller) {
    controller.view = this;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            labelStyle: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: "UI Basic",
              ),
              Tab(
                text: "UI Pro",
              ),
            ],
          ),
          title: const Text('Belajar itu indah'),
        ),
        body: const TabBarView(
          children: [
            UiBasicView(),
            UiProView()
          ],
        ),
      ),
    );
  }

  @override
  State<HomeView> createState() => HomeController();
}
