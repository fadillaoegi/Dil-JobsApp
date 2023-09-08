// import 'package:diljobsapp/themes/colors.dart';
import 'package:diljobsapp/models/category_model.dart';
import 'package:diljobsapp/models/job_model.dart';
import 'package:diljobsapp/providers/category_provider.dart';
import 'package:diljobsapp/providers/job_provider.dart';
import 'package:diljobsapp/providers/user_provider.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/avatar_widget.dart';
import 'package:diljobsapp/widgets/card_widget.dart';
import 'package:diljobsapp/widgets/header_text_widget.dart';
import 'package:diljobsapp/widgets/list_post_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var userProvider = Provider.of<UserProvider>(context);
    // ignore: unused_local_variable
    var categoryProivder = Provider.of<CategoryProvider>(context);
    var jobProvider = Provider.of<JobProvider>(context);

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
                    textOne: 'Haloo,',
                    textTwo: 'Nabila',
                    // textTwo: userProvider.user.name,
                  ),
                  // Text(userProvider.user.name),
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

              // NOTE: DINAMIS DATA
              Container(
                padding: const EdgeInsets.only(top: 20.0),
                height: 200,
                child: FutureBuilder<List<CategoryModel>>(
                    future: categoryProivder.getCategories(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return ListView(
                          scrollDirection: Axis.horizontal,
                          children: snapshot.data!
                              .map(
                                (category) => CardCustom(
                                  image: category.imageUrl,
                                  text: category.name,
                                ),
                              )
                              .toList(),

                          // NOTE: STATIS DATA
                          //     [
                          //   CardCustom(
                          //     image: "assets/images/card_category.png",
                          //     text: "Mobile Developer",
                          //   ),
                          //   CardCustom(
                          //     image: "assets/images/card_category2.png",
                          //     text: "Website Developer",
                          //   ),
                          //   CardCustom(
                          //     image: "assets/images/card_category_three.png",
                          //     text: "Bussiness Analyst",
                          //   ),
                          //   CardCustom(
                          //     image: "assets/images/card_category_four.png",
                          //     text: "Content Writer",
                          //   ),
                          //   CardCustom(
                          //     image: "assets/images/card_category_five.png",
                          //     text: "Video Grafer",
                          //   ),
                          // ],
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
              const SizedBox(
                height: 30.0,
              ),

              // NOTE: JUST POSTED
              Text(
                "Just Posted",
                style: black400.copyWith(fontSize: 16.0),
              ),

              // NOTE: DINAMIS DATA
              Container(
                margin: const EdgeInsets.only(top: 26.0),
                child: FutureBuilder<List<JobModel>>(
                    future: jobProvider.getJobs(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return Column(
                          children: snapshot.data!
                              .map((job) => ListPost(
                                    image: job.companyLogo,
                                    title: job.name,
                                    subtitle: job.companyName,
                                    place: job.location,
                                  ))
                              .toList(),
                          
                          // NOTE: STATIS DATA
                          // [
                          //   ListPost(
                          //       image: "assets/images/google-icon.png",
                          //       title: "Front-end Developer",
                          //       subtitle: "Google"),
                          //   ListPost(
                          //       image: "assets/images/instagram-icon.png",
                          //       title: "Back-end Developer",
                          //       subtitle: "Google"),
                          //   ListPost(
                          //       image: "assets/images/facebook-icon.png",
                          //       title: "Dekstop Developer",
                          //       subtitle: "Google"),
                          // ],
                        );
                      }

                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
