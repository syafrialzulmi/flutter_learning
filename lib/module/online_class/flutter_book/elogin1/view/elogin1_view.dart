import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';
import '../controller/elogin1_controller.dart';

class Elogin1View extends StatefulWidget {
  const Elogin1View({Key? key}) : super(key: key);

  Widget build(context, Elogin1Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Welcome \nto MagicBook",
                        style: TextStyle(
                          color: Color(0xff455154),
                          fontSize: 36.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        child: Image.asset('assets/icons/magicbook_logo.png'),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Text(
                    "Biggest collection of 300+ layouts \nfor iOS prototyping.",
                    style: TextStyle(
                      color: Color(0xff455154),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 72,
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
                      fixedSize:
                          Size(MediaQuery.of(context).size.width * 1, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text(
                      "Login",
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
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: const Color(0xff59B58D),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Fogot password?"),
                  ),
                ],
              ),
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
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Elogin1View> createState() => Elogin1Controller();
}
