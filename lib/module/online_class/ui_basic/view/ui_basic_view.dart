import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';

class UiBasicView extends StatefulWidget {
  const UiBasicView({Key? key}) : super(key: key);

  Widget build(context, UiBasicController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              getGrid(title: "Latihan Layout - ELogin", children: [
                getMenu(label: "ELogin1", view: const Elogin1View()),
                getMenu(label: "ELogin2", view: const Elogin2View()),
                getMenu(label: "ELogin3", view: const Elogin3View()),
                getMenu(label: "ELogin4", view: const Elogin4View()),
                getMenu(label: "ELogin5", view: const Elogin5View()),
              ]),
              getGrid(title: "Latihan Layout - ESignup", children: [
                getMenu(label: "ESignup1", view: const Esignup1View()),
                getMenu(label: "ESignup2", view: const Esignup2View()),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UiBasicView> createState() => UiBasicController();
}
