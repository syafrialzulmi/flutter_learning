import 'package:flutter/material.dart';
import 'package:flutter_learning/core.dart';

getPostImage() {
  return Column(
    children: [
      const Divider(
        thickness: 10,
        color: Color(0xffF3F6F6),
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
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xffCDCDCD),
                        child: Icon(
                          Icons.person,
                          color: Color(0xff455154),
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: [
                          TextSpan(
                            text: "Maud Matthews",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff455154),
                            ),
                          ),
                          TextSpan(
                            text: " with ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff455154),
                            ),
                          ),
                          TextSpan(
                            text: "Blake Abbott",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff455154),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Color(0xff455154),
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(right: 5),
                height: 160,
                width: MediaQuery.of(Get.currentContext).size.width,
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
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                    ],
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.download,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "831 likes",
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
                        "61 comments",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "8 shares",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
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
        thickness: 10,
        color: Color(0xffF3F6F6),
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
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundColor: Color(0xffCDCDCD),
                        child: Icon(
                          Icons.person,
                          color: Color(0xff455154),
                          size: 30,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: [
                          TextSpan(
                            text: "Harriet Allen",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff455154),
                            ),
                          ),
                          TextSpan(
                            text: " is ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff455154),
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: Icon(Icons.emoji_emotions),
                          ),
                          TextSpan(
                            text: " feeling happy",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff455154),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Color(0xff455154),
                    size: 18,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Of all of the celestial bodies that capture our attention and fascination as astronomers, none has a greater influence on life on planet Earth than it’s own satellite, the ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xff455154),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                    ],
                  ),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.download,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "831 likes",
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
                        "61 comments",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "8 shares",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
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
