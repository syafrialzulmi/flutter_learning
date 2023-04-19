import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';

class Elogin4View extends StatefulWidget {
  const Elogin4View({Key? key}) : super(key: key);

  Widget build(context, Elogin4Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(30),
          height: MediaQuery.of(Get.currentContext).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  child: Image.asset(
                    'assets/icons/magicbook_logo.png',
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: const [
                      CircleAvatar(
                        backgroundColor: Color(0xffF4F6F6),
                        radius: 50,
                        child: Icon(
                          Icons.person,
                          size: 60,
                          color: Color(0xffC4CACC),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Larry Dennis",
                        style: TextStyle(
                          color: Color(0xff455154),
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "larry.dennis@mail.io",
                        style: TextStyle(
                          color: Color(0xff455154),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
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
                        child: const Text(
                          "Continue as Dennis",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xff59B58D),
                          textStyle: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text("Choose another account"),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Elogin4View> createState() => Elogin4Controller();
}
