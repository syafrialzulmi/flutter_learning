import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';

class Edashboard3View extends StatefulWidget {
  const Edashboard3View({Key? key}) : super(key: key);

  Widget build(context, Edashboard3Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset("assets/icons/logo.png"),
        title: const Text(
          "Scheme Store",
          style: TextStyle(
            color: Color(0xff455154),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: const [
          Icon(
            Icons.account_circle_rounded,
            color: Color(0xffAAAAAA),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(Get.currentContext).size.width,
              margin: const EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xffCDCDCD),
              ),
              child: contentGalery(
                  tag: "adidas",
                  title: "Gazelle Suede",
                  description:
                      "The Adidas Originals draw inspiration from street culture and retro styles."),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 7.5,
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffCDCDCD),
                    ),
                    child: contentGalery(
                        tag: "puma",
                        title: "Soccer Boots",
                        description:
                            "A focus on functionality as well as style is paramount in PUMA's designs"),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 7.5,
                      right: 15,
                      bottom: 15,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xffCDCDCD),
                    ),
                    child: contentGalery(
                        tag: "reebook",
                        title: "Combat Boxing",
                        description:
                            "Reebok have aligned themselves with some of the world's top athletes"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  contentGalery(
      {required String tag,
      required String title,
      required String description}) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tag.toUpperCase(),
                style: const TextStyle(
                  color: Color(0xff455154),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff455154),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Center(
            child: Icon(
              Icons.image,
              color: Color(0xff455154),
              size: 75,
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              color: Color(0xff455154),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<Edashboard3View> createState() => Edashboard3Controller();
}
