import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';
import '../controller/edashboard1_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Edashboard1View extends StatefulWidget {
  Edashboard1View({Key? key}) : super(key: key);

  final controllerPage = PageController(viewportFraction: 0.8, keepPage: true);

  Widget build(context, Edashboard1Controller controller) {
    final page = List.generate(
      6,
      (index) => Container(
        height: 180,
        width: 345,
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 4,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffF4F6F6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.image,
              size: 50,
              color: Color(0xffAAAAAA),
            ),
            Center(
              child: Text(
                "Image $index",
                style: const TextStyle(
                  color: Color(0xff455154),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(
          top: 40,
          bottom: 15,
          left: 15,
          right: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Shop",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Over 45K Items Available for You",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xffF4F6F6),
                    radius: 35,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Color(0xffC4CACC),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 180,
                child: PageView.builder(
                  controller: controllerPage,
                  itemBuilder: (context, index) {
                    return page[index % page.length];
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                controller: controllerPage,
                count: page.length,
                effect: const WormEffect(
                  dotColor: Color(0xffCDCDCD),
                  activeDotColor: Color(0xff59B58D),
                  dotHeight: 10,
                  dotWidth: 10,
                  type: WormType.thin,
                  // strokeWidth: 5,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Arrivals",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff455154),
                    ),
                  ),
                  Row(
                    children: const [
                      Text(
                        "See All",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff455154),
                      ),
                    ],
                  ),
                ],
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (_, index) => SizedBox(
                  height: 170,
                  width: 165,
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        width: 165,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF4F6F6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.image,
                              size: 50,
                              color: Color(0xffAAAAAA),
                            ),
                            Center(
                                child: Text(
                              "Image $index",
                              style: const TextStyle(
                                color: Color(0xff455154),
                              ),
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Label $index",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff455154),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Informasi $index",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      )
                    ],
                  ),
                ),
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Edashboard1View> createState() => Edashboard1Controller();
}
