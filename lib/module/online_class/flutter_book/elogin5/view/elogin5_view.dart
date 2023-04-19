import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';

class Elogin5View extends StatefulWidget {
  const Elogin5View({Key? key}) : super(key: key);

  Widget build(context, Elogin5Controller controller) {
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
              const Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.save_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: Image.asset(
                    'assets/icons/magicbook_logo.png',
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
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
                        children: const [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.square,
                              color: Color(0xff3F0606),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Log In with Google",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                        children: const [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.square,
                              color: Color(0xff3F0606),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Log In with Facebook",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
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
                        children: const [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.square,
                              color: Color(0xff3F0606),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              "Log In as Guest",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Elogin5View> createState() => Elogin5Controller();
}
