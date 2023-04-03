import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/list_post_widget.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // NOTE: HEDADER
            Container(
              width: 560,
              height: 270,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image:
                          AssetImage("assets/images/bg_secondhomepage.png"))),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                padding: const EdgeInsets.only(top: 180.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Website Developer",
                      style: white500.copyWith(fontSize: 24.0),
                    ),
                    Text(
                      "12,309 available",
                      style: white500.copyWith(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Big Companies",
                    style: black300.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ListPost(
                      image: "assets/images/google-icon.png",
                      title: "Front-end Developer",
                      subtitle: "Google"),
                  ListPost(
                      image: "assets/images/instagram-icon.png",
                      title: "Back-end Developer",
                      subtitle: "Google"),
                  ListPost(
                      image: "assets/images/facebook-icon.png",
                      title: "Dekstop Developer",
                      subtitle: "Google"),
                  Text(
                    "New Start Up",
                    style: black300.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ListPost(
                      image: "assets/images/google-icon.png",
                      title: "Front-end Developer",
                      subtitle: "Google"),
                  ListPost(
                      image: "assets/images/instagram-icon.png",
                      title: "Back-end Developer",
                      subtitle: "Google"),
                  ListPost(
                      image: "assets/images/facebook-icon.png",
                      title: "Dekstop Developer",
                      subtitle: "Google"),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
