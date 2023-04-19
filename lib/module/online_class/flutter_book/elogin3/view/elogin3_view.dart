import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';

class Elogin3View extends StatefulWidget {
  const Elogin3View({Key? key}) : super(key: key);

  Widget build(context, Elogin3Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.all(30),
          height: MediaQuery.of(Get.currentContext).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        child: Image.asset(
                          'assets/icons/magicbook_logo.png',
                        ),
                      ),
                      const SizedBox(
                        height: 19,
                      ),
                      const Text(
                        "Biggest collection of 300+ layouts\nfor iOS prototyping.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.25,
                      ),
                      const Text(
                        "Login with social networks",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff969FA2),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff59B58D),
                              elevation: 0,
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width * 0.4, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Facebook",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(Icons.facebook),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff59B58D),
                              elevation: 0,
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width * 0.4, 48),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Twitter",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(Icons.facebook),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "or sign up with Email",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff969FA2),
                        ),
                      ),
                      const SizedBox(
                        height: 9,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF4F6F6),
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
                              "Sign Up",
                              style: TextStyle(
                                color: Color(0xff455154),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff969FA2),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                        child: const Text("Login with Email"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Elogin3View> createState() => Elogin3Controller();
}
