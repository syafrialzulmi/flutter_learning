import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';

getPostImage() {
  return Column(
    children: [
      const Divider(
        thickness: 1,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffCDCDCD),
                        child: Icon(
                          Icons.person,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Emily Doyle",
                        style: TextStyle(
                          color: Color(0xff455154),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "1 hour ago",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Color(0xff455154),
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 160,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: MediaQuery.of(Get.currentContext).size.height,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Color(0xffCDCDCD),
                        ),
                        child: const Icon(
                          Icons.image,
                          size: 60,
                          color: Color(0xff455154),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 5,
                                bottom: 5,
                              ),
                              width:
                                  MediaQuery.of(Get.currentContext).size.width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(0xffCDCDCD),
                              ),
                              child: const Icon(
                                Icons.image,
                                size: 40,
                                color: Color(0xff455154),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(
                                left: 5,
                                top: 5,
                              ),
                              width:
                                  MediaQuery.of(Get.currentContext).size.width,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: Color(0xffCDCDCD),
                              ),
                              child: const Icon(
                                Icons.plus_one,
                                size: 40,
                                color: Color(0xff455154),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "5 likes",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "1 comment",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.comment,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.info,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}

getPostText() {
  return Column(
    children: [
      const Divider(
        thickness: 1,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 15,
        ),
        child: SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffCDCDCD),
                        child: Icon(
                          Icons.person,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Maud Matthews",
                        style: TextStyle(
                          color: Color(0xff455154),
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.check_circle,
                        color: Color(0xff455154),
                        size: 18,
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "2 min ago",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Color(0xff455154),
                        size: 18,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Never put off till tomorrow what may be done day after tomorrow just as well.",
                style: TextStyle(
                  color: Color(0xff455154),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "89.4K likes",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "93 comments",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.comment,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.info,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
