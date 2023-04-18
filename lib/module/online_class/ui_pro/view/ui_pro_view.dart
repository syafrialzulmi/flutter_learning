import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';
import '../controller/ui_pro_controller.dart';

class UiProView extends StatefulWidget {
  const UiProView({Key? key}) : super(key: key);

  Widget build(context, UiProController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("UiPro"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<UiProView> createState() => UiProController();
}