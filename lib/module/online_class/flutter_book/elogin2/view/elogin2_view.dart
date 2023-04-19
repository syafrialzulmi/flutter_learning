import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';

class Elogin2View extends StatefulWidget {
  const Elogin2View({Key? key}) : super(key: key);

  Widget build(context, Elogin2Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(30),
          height: MediaQuery.of(Get.currentContext).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Image.asset('assets/icons/magicbook_logo.png'),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Scheme\niOS Wireframe\nLayouts",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff455154),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    "Biggest collection of 300+ layouts\nfor iOS prototyping.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff455154),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      "Use Facebook to find your friends",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff969FA2),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff59B58D),
                      elevation: 0,
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 1, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Log In with Facebook",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Icon(
                          Icons.facebook_rounded,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Elogin2View> createState() => Elogin2Controller();
}
