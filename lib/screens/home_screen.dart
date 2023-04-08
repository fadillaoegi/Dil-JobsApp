// import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/avatar_widget.dart';
import 'package:diljobsapp/widgets/card_widget.dart';
import 'package:diljobsapp/widgets/header_text_widget.dart';
import 'package:diljobsapp/widgets/list_post_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: ColordilJobsApp.primary,
        margin: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // NOTE: HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeaderText(
                    textOne: 'Nabila',
                    textTwo: "Shofa",
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 40.0),
                    width: 70.0,
                    height: 70.0,
                    child: const Avatar(),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),

              // NOTE: CATEGORIES
              Text(
                "Hot Categories",
                style: black400.copyWith(fontSize: 16.0),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CardCustom(
                        image: "assets/images/card_category.png",
                        text: "Mobile Developer",
                      ),
                      CardCustom(
                        image: "assets/images/card_category2.png",
                        text: "Website Developer",
                      ),
                      CardCustom(
                        image: "assets/images/card_category_three.png",
                        text: "Bussiness Analyst",
                      ),
                      CardCustom(
                        image: "assets/images/card_category_four.png",
                        text: "Content Writer",
                      ),
                      CardCustom(
                        image: "assets/images/card_category_five.png",
                        text: "Video Grafer",
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),

              // NOTE: JUST POSTED
              Text(
                "Just Posted",
                style: black400.copyWith(fontSize: 16.0),
              ),
              Container(
                margin: const EdgeInsets.only(top: 26.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
