import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';
import 'package:flutter_learning/module/online_class/flutter_book/edashboard6/widget/get_card.dart';
import '../controller/edashboard6_controller.dart';

class Edashboard6View extends StatefulWidget {
  const Edashboard6View({Key? key}) : super(key: key);

  Widget build(context, Edashboard6Controller controller) {
    controller.view = this;

    var height = MediaQuery.of(context).viewPadding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: height + 10,
                left: 15,
                right: 15,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xffCDCDCD),
                            child: Icon(
                              Icons.person,
                              color: Color(0xff455154),
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "What's new, Andrew?",
                            style: TextStyle(
                              color: Color(0xff969FA2),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.image,
                            color: Color(0xff455154),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.video_call,
                            color: Color(0xff455154),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.place,
                            color: Color(0xff455154),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            getPostImage(),
            getPostText(),
          ],
        ),
      ),
    );
  }

  @override
  State<Edashboard6View> createState() => Edashboard6Controller();
}
