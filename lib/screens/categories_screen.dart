import 'package:diljobsapp/models/job_model.dart';
import 'package:diljobsapp/providers/job_provider.dart';
import 'package:diljobsapp/themes/font_style.dart';
import 'package:diljobsapp/widgets/list_post_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  // final CategoryModel category;
  // Categories(this.category, {super.key});
  String? image;
  String? text;
  Categories({super.key, this.image, this.text});

  @override
  Widget build(BuildContext context) {
    var jobProvider = Provider.of<JobProvider>(context);
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
              height: 380,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: NetworkImage(image!))),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24.0),
                padding: const EdgeInsets.only(top: 280.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text!,
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

                  FutureBuilder<List<JobModel>>(
                      future: jobProvider.getJobsByCategory(text!),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Column(
                            children: snapshot.data!
                                .map((job) => ListPost(job))
                                .toList(),
                          );
                        }
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }),

                  // NOTE: STATIS DATA
                  // ListPost(
                  //     image: "assets/images/google-icon.png",
                  //     title: "Front-end Developer",
                  //     subtitle: "Google"),
                  // ListPost(
                  //     image: "assets/images/instagram-icon.png",
                  //     title: "Back-end Developer",
                  //     subtitle: "Google"),
                  // ListPost(
                  //     image: "assets/images/facebook-icon.png",
                  //     title: "Dekstop Developer",
                  //     subtitle: "Google"),
                  Text(
                    "New Start Up",
                    style: black300.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),

                  FutureBuilder<List<JobModel>>(
                      future: jobProvider.getJobs(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Column(
                            children: snapshot.data!.map((job) => ListPost(job
                                // image: job.companyLogo,
                                // title: job.name,
                                // subtitle: job.companyName,
                                // place: job.location,
                                )).toList(),
                          );
                        }

                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }),

                  // NOTE: STATIS DATA
                  // ListPost(
                  //     image: "assets/images/google-icon.png",
                  //     title: "Front-end Developer",
                  //     subtitle: "Google"),
                  // ListPost(
                  //     image: "assets/images/instagram-icon.png",
                  //     title: "Back-end Developer",
                  //     subtitle: "Google"),
                  // ListPost(
                  //     image: "assets/images/facebook-icon.png",
                  //     title: "Dekstop Developer",
                  //     subtitle: "Google"),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
