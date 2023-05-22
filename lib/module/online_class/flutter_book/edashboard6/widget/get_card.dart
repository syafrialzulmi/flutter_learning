import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

final Completer<GoogleMapController> _controller =
    Completer<GoogleMapController>();

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: const TextSpan(children: [
                              TextSpan(
                                text: "Eliza Sanchez",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff455154),
                                ),
                              ),
                              TextSpan(
                                text: " is in ",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff455154),
                                ),
                              ),
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Icon(Icons.place),
                              ),
                              TextSpan(
                                text: "Dubai, UAE",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff455154),
                                ),
                              ),
                            ]),
                          ),
                          const Text(
                            "2 min ago",
                            style: TextStyle(
                              color: Color(0xff455154),
                              fontSize: 12,
                            ),
                          ),
                        ],
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
                "Life on planet Earth",
                style: TextStyle(
                  color: Color(0xff455154),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15.0),
                height: 150,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: GoogleMap(
                    initialCameraPosition: const CameraPosition(
                      target: LatLng(37.42796133580664, -122.085749655962),
                      zoom: 14.4746,
                    ),
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
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
                    children: [
                      const CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.person,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: const TextSpan(children: [
                          TextSpan(
                            text: "Dylan Knight",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff455154),
                            ),
                          ),
                          TextSpan(
                            text: " and ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff455154),
                            ),
                          ),
                          TextSpan(
                            text: "3 others",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff455154),
                            ),
                          ),
                          TextSpan(
                            text: " have been here ",
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
                ],
              ),
              const Divider(
                thickness: 1,
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
                        width: 5,
                      ),
                      Text(
                        "61",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
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
                        width: 5,
                      ),
                      Text(
                        "417",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.upload,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1",
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
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(Icons.upload),
                  RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Ivan Allison",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff455154),
                          ),
                        ),
                        TextSpan(
                          text: " shared post",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff455154),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                thickness: 1,
              ),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.left,
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: "Jean Wells ",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff455154),
                                  ),
                                ),
                                WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(Icons.check_circle),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            "Yesterday at 18:04",
                            style: TextStyle(
                              color: Color(0xff455154),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
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
                "Without music, life would be mistake.",
                maxLines: 2,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xff455154),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                thickness: 1,
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
                        width: 5,
                      ),
                      Text(
                        "61",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
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
                        width: 5,
                      ),
                      Text(
                        "417",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Color(0xffF3F6F6),
                        child: Icon(
                          Icons.upload,
                          color: Color(0xff455154),
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff455154),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
