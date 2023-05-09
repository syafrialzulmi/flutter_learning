import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';
import 'package:flutter_learning/module/online_class/flutter_book/edashboard5/widget/get_card.dart';
import '../controller/edashboard5_controller.dart';

class Edashboard5View extends StatefulWidget {
  const Edashboard5View({Key? key}) : super(key: key);

  Widget build(context, Edashboard5Controller controller) {
    controller.view = this;

    // var height = AppBar().preferredSize.height;
    var height = MediaQuery.of(context).viewPadding.top;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/icons/logo.png"),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Scheme Social",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff455154),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(Icons.add),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.search),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            index == 0
                                ? Icons.add_circle
                                : Icons.account_circle,
                            size: 50,
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
                    );
                  },
                ),
              ),
              getPostImage(),
              getPostText(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Edashboard5View> createState() => Edashboard5Controller();
}
