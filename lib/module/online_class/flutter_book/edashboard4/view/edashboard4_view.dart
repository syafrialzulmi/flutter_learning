import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';
import 'package:flutter_learning/module/online_class/flutter_book/edashboard4/widget/get_card.dart';
import '../controller/edashboard4_controller.dart';

class Edashboard4View extends StatefulWidget {
  const Edashboard4View({Key? key}) : super(key: key);

  Widget build(context, Edashboard4Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.add_circle),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Feed",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff455154),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: const Color(0xffCDCDCD),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xffCDCDCD),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color(0xffCDCDCD),
                        ),
                      ),
                      labelText: 'Search',
                      suffixIcon: const Icon(
                        Icons.mic,
                        color: Color(0xff959FA2),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color(0xff959FA2),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 110,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10),
                          height: 110,
                          width: 85,
                          decoration: const BoxDecoration(
                              color: Color(0xffCDCDCD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  index == 0
                                      ? Icons.add_circle
                                      : Icons.account_circle,
                                  size: 30,
                                  color: index == 0
                                      ? const Color(0xff59B58D)
                                      : const Color(0xff455154),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  index == 0 ? "Add Story" : "Cecilia $index",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Color(0xff455154),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            getPostText(),
            getPostImage(),
          ],
        ),
      ),
    );
  }

  @override
  State<Edashboard4View> createState() => Edashboard4Controller();
}
