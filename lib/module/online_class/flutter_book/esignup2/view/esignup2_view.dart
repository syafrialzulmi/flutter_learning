import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';
import '../controller/esignup2_controller.dart';

class Esignup2View extends StatefulWidget {
  const Esignup2View({Key? key}) : super(key: key);

  Widget build(context, Esignup2Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff455154),
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xff59B58D),
        ),
        actions: const [
          Icon(
            Icons.close,
            color: Color(0xff59B58D),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Color(0xffF4F6F6),
                      radius: 60,
                      child: Icon(
                        Icons.person,
                        size: 60,
                        color: Color(0xffC4CACC),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: -25,
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: const Color(0xff59B58D),
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.camera_alt,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF4F6F6),
                  labelText: 'Full Name',
                  labelStyle: const TextStyle(
                    color: Color(0xff455154),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF4F6F6),
                  labelText: 'Email',
                  labelStyle: const TextStyle(
                    color: Color(0xff455154),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                    color: Color(0xffC4CACC),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF4F6F6),
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                    color: Color(0xff455154),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff59B58D),
                  elevation: 0,
                  fixedSize: Size(MediaQuery.of(context).size.width * 1, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  "Create an Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "By signing up, you agree to our",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff969FA2),
                      ),
                    ),
                    TextSpan(
                      text: "\nTerms",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff59B58D),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("nTerms");
                        },
                    ),
                    const TextSpan(
                      text: " and ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff969FA2),
                      ),
                    ),
                    TextSpan(
                      text: "Privacy",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff59B58D),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print("Privacy");
                        },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
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
                child: const Text("I have an account"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Esignup2View> createState() => Esignup2Controller();
}
