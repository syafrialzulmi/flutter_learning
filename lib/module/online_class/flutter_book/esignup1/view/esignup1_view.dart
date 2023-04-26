import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';
import '../controller/esignup1_controller.dart';
import 'package:flutter/gestures.dart';

class Esignup1View extends StatefulWidget {
  const Esignup1View({Key? key}) : super(key: key);

  Widget build(context, Esignup1Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/icons/magicbook_logo.png',
          height: 50,
          fit: BoxFit.cover,
        ),
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xff59B58D),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffF4F6F6),
                  elevation: 0,
                  fixedSize: Size(MediaQuery.of(context).size.width * 1, 48),
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
                        color: Color(0xff455154),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(
                      Icons.facebook,
                      color: Color(0xffC4CACC),
                    )
                  ],
                ),
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
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: const Color(0xffF4F6F6),
                  labelText: 'First Name',
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
                  labelText: 'Last Name',
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
                  "Continue",
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Esignup1View> createState() => Esignup1Controller();
}
